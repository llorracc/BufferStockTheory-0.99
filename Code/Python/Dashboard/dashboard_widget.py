import ipywidgets as widgets
from HARK.ConsumptionSaving.ConsIndShockModel import IndShockConsumerType, PerfForesightConsumerType
from copy import deepcopy
import matplotlib.pyplot as plt
import numpy as np

# Import default parameter values (init_idiosyncratic_shock)
from HARK.ConsumptionSaving.ConsIndShockModel import init_idiosyncratic_shocks as base_params

# Set the parameters for the baseline results in the paper
# using the variable names defined in the cell above
base_params['PermGroFac'] =                [1.03] # Permanent income growth factor
base_params['Rfree']      = Rfree        =  1.04  # Interest factor on assets
base_params['DiscFac']    = DiscFac      =  0.96  # Time Preference Factor
base_params['CRRA']       = CRRA         =  2.00  # Coefficient of relative risk aversion
base_params['UnempPrb']   = UnempPrb     =  0.005 # Probability of unemployment (e.g. Probability of Zero Income in the paper)
base_params['IncUnemp']   = IncUnemp     =  0.0   # Induces natural borrowing constraint
base_params['PermShkStd'] =                 [0.1]   # Standard deviation of log permanent income shocks
base_params['TranShkStd'] =                 [0.1]   # Standard deviation of log transitory income shocks
# %%
# Uninteresting housekeeping and details
# Make global variables for the things that were lists above -- uninteresting housekeeping
PermGroFac, PermShkStd, TranShkStd = base_params['PermGroFac'][0],base_params['PermShkStd'][0],base_params['TranShkStd'][0]

# Some technical settings that are not interesting for our purposes
base_params['LivPrb']       = [1.0]   # 100 percent probability of living to next period
base_params['CubicBool']    = True    # Use cubic spline interpolation
base_params['T_cycle']      = 1       # No 'seasonal' cycles
base_params['BoroCnstArt']  = None    # No artificial borrowing constraint


# Define a slider for the discount factor
DiscFac_widget = [
    widgets.FloatSlider(
        min=0.9,
        max=0.99,
        step=0.0002,
        value=DiscFac,  # Default value
        continuous_update=False,
        readout_format=".4f",
        description="\u03B2",
    )
    for i in range(5)
]  # beta unicode

# Define a slider for relative risk aversion
CRRA_widget = [
    widgets.FloatSlider(
        min=1.0,
        max=5.0,
        step=0.01,
        value=CRRA,  # Default value
        continuous_update=False,
        readout_format=".2f",
        description="\u03C1",
    )
    for i in range(5)
]  # rho unicode

# Define a slider for the interest factor
Rfree_widget = [
    widgets.FloatSlider(
        min=1.01,
        max=1.08,
        step=0.001,
        value=Rfree,  # Default value
        continuous_update=False,
        readout_format=".4f",
        description="R",
    )
    for i in range(5)
]


# Define a slider for permanent income growth
PermGroFac_widget = [
    widgets.FloatSlider(
        min=1.00,
        max=1.08,
        step=0.001,
        value=PermGroFac,  # Default value
        continuous_update=False,
        readout_format=".4f",
        description="\u0393",
    )
    for i in range(5)
]  # capital gamma

# change default value for GIC fail figure
PermGroFac_widget[1].value = 1.0

# change default value for Bounds fig
Rfree_widget[3].min = 1.0
Rfree_widget[3].max = 1.0
Rfree = 1.0
PermGroFac_widget[3].min = Rfree_widget[3].min-0.03
PermGroFac_widget[3].max = Rfree_widget[3].max
DiscFacMin=0.92
DiscFacMax=((Rfree_widget[3].max)**(CRRA-1))/Rfree_widget[3].max - 0.01

# Define a slider for the discount factor
DiscFac_widget = [
    widgets.FloatSlider(
        min=0.92,
        max=DiscFacMax,
        step=0.0002,
        value=DiscFac,  # Default value
        continuous_update=False,
        readout_format=".4f",
        description="\u03B2",
    )
    for i in range(5)
]  # beta unicode

# Define a slider for unemployment (or retirement) probability
UnempPrb_widget = [
    widgets.FloatSlider(
        min=0.00005,
        max=0.05,  # Go up to twice the default value
        step=0.0001,
        value=UnempPrb,
        continuous_update=False,
        readout_format=".5f",
        description="℘",
    )
    for i in range(5)
]

# Define a slider for unemployment (or retirement) probability
IncUnemp_widget = [
    widgets.FloatSlider(
        min=0.0001,
        max=0.01,  # Go up to twice the default value
        step=0.00001,
        value=IncUnemp,
        continuous_update=False,
        readout_format=".5f",
        description="$\\mho$",
    )
    for i in range(5)
]

# Define a slider for PermShkStd
PermShkStd_widget = [
    widgets.FloatSlider(
        min=0.0001,
        max=0.3,  # Go up to twice the default value
        step=0.001,
        value=PermShkStd,
        continuous_update=False,
        readout_format=".5f",
        description="$\sigma_\psi$",
    )
    for i in range(5)
]

# Define a slider for unemployment (or retirement) probability
TranShkStd_widget = [
    widgets.FloatSlider(
        min=0.0001,
        max=0.3,  # Go up to twice the default value
        step=0.001,
        value=TranShkStd,
        continuous_update=False,
        readout_format=".5f",
        description="$\sigma_θ$",
    )
    for i in range(5)
]

def makeConvergencePlot(DiscFac, CRRA, Rfree, PermShkStd):
    # Construct finite horizon agent with baseline parameters
    baseAgent_Fin = IndShockConsumerType(verbose=0, **base_params)
    baseAgent_Fin.DiscFac = DiscFac
    baseAgent_Fin.CRRA = CRRA
    baseAgent_Fin.Rfree = Rfree
    baseAgent_Fin.PermShkStd = [PermShkStd]
    baseAgent_Fin.cycles = 100
    baseAgent_Fin.updateIncomeProcess()
    baseAgent_Fin.solve()
    baseAgent_Fin.unpack('cFunc')
    
    # figure limits
    mMax = 6 # 11
    mMin = 0
    cMin = 0
    cMax = 4 # 7
    
    mPlotMin  = 0
    mLocCLabels = 5.6 # 9.6 # Defines horizontal limit of figure
    mPlotTop = 3.5 # 6.5    # Defines maximum m value where functions are plotted
    mPts  = 1000      # Number of points at which functions are evaluated

    plt.figure(figsize=(12, 8))
    plt.ylim([cMin, cMax])
    plt.xlim([mMin, mMax])
    
    
    mBelwLabels    = np.linspace(mPlotMin,mLocCLabels-0.1,mPts) # Range of m below loc of labels
    m_FullRange    = np.linspace(mPlotMin,mPlotTop,mPts)        # Full plot range 
    c_Tm0  = m_FullRange                           # c_Tm0  defines the last period consumption rule (c=m)
    c_Tm1  = baseAgent_Fin.cFunc[ -2](mBelwLabels) # c_Tm1 defines the second-to-last period consumption rule
    c_Tm5  = baseAgent_Fin.cFunc[ -6](mBelwLabels) # c_Tm5 defines the T-5 period consumption rule
    c_Tm10 = baseAgent_Fin.cFunc[-11](mBelwLabels) # c_Tm10 defines the T-10 period consumption rule
    c_Limt = baseAgent_Fin.cFunc[  0](mBelwLabels) # c_Limt defines limiting inﬁnite-horizon consumption rule


    plt.plot(mBelwLabels, c_Limt, label="$c(m)$")
    plt.plot(mBelwLabels, c_Tm1, label="$c_{T-1}(m)$")
    plt.plot(mBelwLabels, c_Tm5, label="$c_{T-5}(m)$")
    plt.plot(mBelwLabels, c_Tm10, label="$c_{T-10}(m)$")
    plt.plot(m_FullRange, c_Tm0, label="$c_{T}(m) = 45$ degree line")
    plt.legend(fontsize='x-large')
    plt.tick_params(
        labelbottom=False,
        labelleft=False,
        left="off",
        right="off",
        bottom="off",
        top="off",
    )

    plt.show()
    return None


def makeGICFailExample(DiscFac, PermShkStd, UnempPrb):
    
    # Construct the "GIC fails" example.

    GIC_fails_dictionary = dict(base_params)
    GIC_fails_dictionary['Rfree']      = 1.04
    GIC_fails_dictionary['PermGroFac'] = [1.00]
    GICFailsExample = IndShockConsumerType(
        verbose=0,
        cycles=0, # cycles=0 makes this an infinite horizon consumer
        **GIC_fails_dictionary)
    GICFailsExample.DiscFac = DiscFac
    GICFailsExample.PermShkStd = [PermShkStd]
    GICFailsExample.UnempPrb = UnempPrb
    GICFailsExample.updateIncomeProcess()
    GICFailsExample.checkConditions()

    # Get calibrated parameters to make code more readable
    LivPrb=GICFailsExample.LivPrb[0]
    Rfree=GICFailsExample.Rfree
    DiscFac=GICFailsExample.DiscFac
    CRRA=GICFailsExample.CRRA

    permShkPrbs=GICFailsExample.PermShkDstn[0].pmf
    permShkVals=GICFailsExample.PermShkDstn[0].X
    EPermGroFac=GICFailsExample.PermGroFac[0]

    # np.dot multiplies vectors; probability times value for each outcome is expectation
    EpermShkInv   = np.dot(permShkPrbs, permShkVals**(-1))    # $   \Ex[\permShk^{-1}]      $
    InvEpermShkInv= (EpermShkInv) ** (-1)                     # $  (\Ex[\permShk^{-1}])^{-1}$
    PermGroFac    = EPermGroFac * InvEpermShkInv               # Uncertainty-adjusted permanent growth factor
    ERNrmFac      = Rfree / PermGroFac                        # Interest factor normalized by uncertainty-adjusted growth
    ErNrmRte      = ERNrmFac - 1                              # Interest rate is interest factor - 1
    # "sustainable" C = P + (discounted) interest income
    # "sustainable" c = 1 + (discounted, normalized) interest income
    EmDelEq0      = lambda m : 1 + (m-1)*(ErNrmRte/ERNrmFac)  # "sustainable" c where E[Δ m] = 0

    GICFailsExample.solve()  # Above, we set up the problem but did not solve it
    GICFailsExample.unpack('cFunc')  # Make the consumption function easily accessible for plotting

    mPlotMin = 0
    mPts  = 1000
    m = np.linspace(mPlotMin,5,mPts)
    c_Limt = GICFailsExample.cFunc[0](m)
    c_Sstn = EmDelEq0(m) # "sustainable" consumption

    plt.figure(figsize=(12, 8))
    plt.plot(m, c_Limt, label="$c(m_{t})$")
    plt.plot(m, c_Sstn, label="$\mathsf{E}_{t}[\Delta m_{t+1}] = 0$")
    plt.xlim(0, 5.5)
    plt.ylim(0, 1.6)
    plt.tick_params(
        labelbottom=False,
        labelleft=False,
        left="off",
        right="off",
        bottom="off",
        top="off",
    )
    plt.legend(fontsize='x-large')
    plt.show()
    print(f'Current Growth Impatience Factor is {GICFailsExample.GPFInd}')
    return None


def makeGrowthplot(PermGroFac, DiscFac):
    # cycles=0 tells the solver to find the infinite horizon solution
    baseAgent_Inf = IndShockConsumerType(verbose=0, cycles=0,**base_params)
    baseAgent_Inf.PermGroFac = [PermGroFac]
    baseAgent_Inf.DiscFac = DiscFac
    baseAgent_Inf.updateIncomeProcess()
    baseAgent_Inf.checkConditions()
    baseAgent_Inf.solve()
    baseAgent_Inf.unpack('cFunc')
    if (baseAgent_Inf.GPFInd >= 1):
        baseAgent_Inf.checkGICInd(verbose=3)
    elif baseAgent_Inf.solution[0].mNrmSS > 3.5:
        print('Solution exists but is outside the plot range.')
    else:
        def EcLev_tp1_Over_p_t(a):
            '''
            Taking end-of-period assets a as input, return ratio of expectation 
            of next period's consumption to this period's permanent income 

            Inputs:
               a: end-of-period assets
            Returns:
               EcLev_tp1_Over_p_{t}: next period's expected c level / current p
            '''
            # Extract parameter values to make code more readable
            permShkVals=baseAgent_Inf.PermShkDstn[0].X
            tranShkVals=baseAgent_Inf.TranShkDstn[0].X
            permShkPrbs=baseAgent_Inf.PermShkDstn[0].pmf
            tranShkPrbs=baseAgent_Inf.TranShkDstn[0].pmf
            Rfree      =baseAgent_Inf.Rfree
            EPermGroFac=baseAgent_Inf.PermGroFac[0]

            PermGrowFac_tp1 = EPermGroFac*permShkVals # Nonstochastic growth times idiosyncratic permShk
            RNrmFac_tp1     = Rfree / PermGrowFac_tp1 # Growth-normalized interest factor 
            # 'bank balances' b = end-of-last-period assets times normalized return factor
            b_tp1 = RNrmFac_tp1*a
            # expand dims of b_tp1 and use broadcasted sum of a column and a row vector
            # to obtain a matrix of possible market resources next period
            # because matrix mult is much much faster than looping to calc E
            m_tp1_GivenTranAndPermShks = np.expand_dims(b_tp1, axis=1) + tranShkVals
            # List of possible values of $\mathbf{c}_{t+1}$ (Transposed by .T)
            cRat_tp1_GivenTranAndPermShks = baseAgent_Inf.cFunc[0](m_tp1_GivenTranAndPermShks).T
            cLev_tp1_GivenTranAndPermShks = cRat_tp1_GivenTranAndPermShks*PermGrowFac_tp1
            # compute expectation over perm shocks by right multiplying with probs
            EOverPShks_cLev_tp1_GivenTranShkShks = np.dot(cLev_tp1_GivenTranAndPermShks, permShkPrbs)
            # finish expectation over trans shocks by right multiplying with probs
            EcLev_tp1_Over_p_t = np.dot(EOverPShks_cLev_tp1_GivenTranShkShks, tranShkPrbs)
            # return expected consumption
            return EcLev_tp1_Over_p_t
        
        # Calculate the expected consumption growth factor
        # mBelwTrg defines the plot range on the left of target m value (e.g. m <= target m)
        mNrmTrg=baseAgent_Inf.solution[0].mNrmSS
        mBelwTrg = np.linspace(1,mNrmTrg,50) 
        c_For_mBelwTrg = baseAgent_Inf.cFunc[0](mBelwTrg)
        a_For_mBelwTrg = mBelwTrg-c_For_mBelwTrg
        EcLev_tp1_Over_p_t_For_mBelwTrg = [EcLev_tp1_Over_p_t(i) for i in a_For_mBelwTrg]

        # mAbveTrg defines the plot range on the right of target m value (e.g. m >= target m)
        mAbveTrg = np.linspace(mNrmTrg,3.5,50)

        # EcGro_For_mAbveTrg: E [consumption growth factor] when m_{t} is below target m
        EcGro_For_mBelwTrg = np.array(EcLev_tp1_Over_p_t_For_mBelwTrg)/c_For_mBelwTrg

        c_For_mAbveTrg = baseAgent_Inf.cFunc[0](mAbveTrg)
        a_For_mAbveTrg = mAbveTrg-c_For_mAbveTrg
        EcLev_tp1_Over_p_t_For_mAbveTrg = [EcLev_tp1_Over_p_t(i) for i in a_For_mAbveTrg]

        # EcGro_For_mAbveTrg: E [consumption growth factor] when m_{t} is bigger than target m_{t}
        EcGro_For_mAbveTrg = np.array(EcLev_tp1_Over_p_t_For_mAbveTrg)/c_For_mAbveTrg 

        Rfree      = 1.0
        EPermGroFac= 1.0
        mNrmTrg    = baseAgent_Inf.solution[0].mNrmSS

        # Calculate Absolute Patience Factor Phi = lower bound of consumption growth factor
        APF = (Rfree*DiscFac)**(1.0/CRRA)



        plt.figure(figsize=(12, 8))
        # Plot the Absolute Patience Factor line
        plt.plot(
            [0, 3.5], [APF, APF], label="\u03A6 = [(\u03B2 R)^(1/ \u03C1)]/R"
        )

        # Plot the Permanent Income Growth Factor line
        plt.plot(
            [0, 3.5], [EPermGroFac, EPermGroFac], label="\u0393"
        )

        # Plot the expected consumption growth factor on the left side of target m
        plt.plot(mBelwTrg, EcGro_For_mBelwTrg, color="black")

        # Plot the expected consumption growth factor on the right side of target m
        plt.plot(mAbveTrg, EcGro_For_mAbveTrg, color="black", label="$\mathsf{E}_{t}[c_{t+1}/c_{t}]$")

        # Plot the target m
        plt.plot(
            [mNrmTrg, mNrmTrg],
            [0, 3.5],
            color="black",
            linestyle="--",
            label="",
        )
        plt.xlim(1, 3.5)
        plt.ylim(0.94, 1.10)
        plt.text(2.105, 0.930, "$m_{t}$", fontsize=26, fontweight="bold")
        plt.text(
            mNrmTrg - 0.02,
            0.930,
            "m̌",
            fontsize=26,
            fontweight="bold",
        )
        plt.tick_params(
            labelbottom=False,
            labelleft=False,
            left="off",
            right="off",
            bottom="off",
            top="off",
        )
        plt.legend(fontsize='x-large')
        plt.show()
        return None
    
    
def makeBoundsFigure(UnempPrb, PermShkStd, TranShkStd, DiscFac ,CRRA):   
    baseAgent_Inf = IndShockConsumerType(verbose=0, cycles=0, **base_params)
    baseAgent_Inf.UnempPrb = UnempPrb
    baseAgent_Inf.PermShkStd = [PermShkStd]
    baseAgent_Inf.TranShkStd = [TranShkStd]
    baseAgent_Inf.DiscFac    = DiscFac
    baseAgent_Inf.CRRA       = CRRA
    baseAgent_Inf.updateIncomeProcess()
    baseAgent_Inf.checkConditions()
    baseAgent_Inf.solve()
    baseAgent_Inf.unpack('cFunc')
    # Retrieve parameters (makes code readable)
    Rfree      = baseAgent_Inf.Rfree
    CRRA       = baseAgent_Inf.CRRA
    EPermGroFac= baseAgent_Inf.PermGroFac[0]
    mNrmTrg    = baseAgent_Inf.solution[0].mNrmSS
    UnempPrb   = baseAgent_Inf.UnempPrb

    κ_Min = 1.0-(Rfree**(-1.0))*(Rfree*DiscFac)**(1.0/CRRA)
    h_inf = (1.0/(1.0-EPermGroFac/Rfree))
    cFunc_Uncnst = lambda m: (h_inf -1)* κ_Min + κ_Min*m
    cFunc_TopBnd = lambda m: (1 - UnempPrb ** (1.0/CRRA)*(Rfree*DiscFac)**(1.0/CRRA)/Rfree)*m
    cFunc_BotBnd = lambda m: (1 -(Rfree*DiscFac)**(1.0/CRRA)/Rfree) * m

    # Plot the consumption function and its bounds
    cMaxLabel = r"c̅$(m) = (m-1+h)κ̲$"  # Use unicode kludge
    cMinLabel = r"c̲$(m)= (1-\Phi_{R})m = κ̲ m$"
    
    mPlotMax = 25
    mPlotMin = 0
    # mKnk is point where the two upper bounds meet
    mKnk = ((h_inf-1)* κ_Min)/((1 - UnempPrb**(1.0/CRRA)*(Rfree*DiscFac)**(1.0/CRRA)/Rfree)-κ_Min)
    mBelwKnkPts = 300
    mAbveKnkPts = 700
    mBelwKnk = np.linspace(mPlotMin,mKnk,mBelwKnkPts)
    mAbveKnk = np.linspace(mKnk,mPlotMax,mAbveKnkPts)
    mFullPts = np.linspace(mPlotMin,mPlotMax,mBelwKnkPts+mAbveKnkPts)

    plt.figure(figsize = (12,8))
    plt.plot(mFullPts,baseAgent_Inf.cFunc[0](mFullPts), label=r'$c(m)$')
    plt.plot(mBelwKnk,cFunc_Uncnst(mBelwKnk), label=cMaxLabel, linestyle="--")
    plt.plot(mAbveKnk,cFunc_Uncnst(mAbveKnk), label=r'Upper Bound $ = $ Min $[\overline{\overline{c}}(m),\overline{c}(m)]$',linewidth=2.5, color='black')
    plt.plot(mBelwKnk,cFunc_TopBnd(mBelwKnk),linewidth=2.5, color='black')
    plt.plot(mAbveKnk,cFunc_TopBnd(mAbveKnk),linestyle="--", label=r"$\overline{\overline{c}}(m) = κ̅m = (1 - ℘^{1/ρ}Φᵣ)m$")
    plt.plot(mBelwKnk,cFunc_BotBnd(mBelwKnk)          , color='red',linewidth=2.5)
    plt.plot(mAbveKnk,cFunc_BotBnd(mAbveKnk)          , color='red', label=cMinLabel,linewidth=2.5)
    plt.tick_params(labelbottom=False, labelleft=False,left='off',right='off',bottom='off',top='off')
    plt.xlim(mPlotMin,mPlotMax)
    plt.ylim(mPlotMin,1.12*cFunc_Uncnst(mPlotMax))
    plt.text(mPlotMin,1.12*cFunc_Uncnst(mPlotMax)+0.05,"$c$",fontsize = 22)
    plt.text(mPlotMax+0.1,mPlotMin,"$m$",fontsize = 22)
    plt.legend(fontsize='x-large')
    plt.show()
    return None

def makeTargetMfig(Rfree, DiscFac, CRRA, PermShkStd, TranShkStd):
    baseAgent_Inf = IndShockConsumerType(verbose=0, cycles=0, **base_params)
    baseAgent_Inf.Rfree = Rfree
    baseAgent_Inf.DiscFac = DiscFac
    baseAgent_Inf.CRRA = CRRA
    baseAgent_Inf.PermShkStd = [PermShkStd]
    baseAgent_Inf.TranShkStd = [TranShkStd]
    baseAgent_Inf.updateIncomeProcess()
    baseAgent_Inf.checkConditions()
    baseAgent_Inf.solve()
    baseAgent_Inf.unpack('cFunc')

    if (baseAgent_Inf.GPFInd >= 1):
        baseAgent_Inf.checkGICInd(verbose=3)
    else:
        mBelwTrg = np.linspace(0,4,1000)
        EPermGroFac = baseAgent_Inf.PermGroFac[0]
        EmDelEq0 = lambda m:(EPermGroFac/Rfree)+(1.0-EPermGroFac/Rfree)*m
        cBelwTrg_Best = baseAgent_Inf.cFunc[0](mBelwTrg) # "best" = optimal c
        cBelwTrg_Sstn = EmDelEq0(mBelwTrg)               # "sustainable" c
        mNrmTrg    = baseAgent_Inf.solution[0].mNrmSS

        plt.figure(figsize=(12, 8))
        plt.plot(mBelwTrg, cBelwTrg_Best, label="$c(m_{t})$")
        plt.plot(mBelwTrg, cBelwTrg_Sstn, label="$\mathsf{E}_{t}[\Delta m_{t+1}] = 0$")
        plt.xlim(0, 3)
        plt.ylim(0, 1.45)
        plt.plot(
            [mNrmTrg, mNrmTrg],
            [0, 2.5],
            color="black",
            linestyle="--",
        )
        plt.tick_params(
            labelbottom=False,
            labelleft=False,
            left="off",
            right="off",
            bottom="off",
            top="off",
        )
        plt.text(0, 1.47, r"$c$", fontsize=26)
        plt.text(3.02, 0, r"$m$", fontsize=26)
        plt.text(mNrmTrg - 0.05, -0.1, "m̌", fontsize=26)
        plt.legend(fontsize='x-large')
        plt.show()
    return None

# def makeBoundsfig(UnempPrb, PermShkStd):
#     base_params_bounds=deepcopy(base_params)
#     base_params_bounds['UnempPrb'] = UnempPrb
#     base_params_bounds['PermShkStd'] = [PermShkStd]
#     base_params_bounds['TranShkStd'] = [TranShkStd]
    
#     baseEx_inf = IndShockConsumerType(verbose=0, cycles=0, **base_params_bounds)
#     if baseEx_inf.PermGroFac[0] >= baseEx_inf.Rfree:
#         FHWCFails = True
#     else:
#         FHWCFails = False
#     base_params_PF=deepcopy(base_params_bounds)
#     if FHWCFails: # Then the upper bound is the solution to the constrained PF model
#         base_params_PF['BoroCnstArt']=0.
#         base_params_PF['MaxKinks']=10000
#         conFunc_PF = PerfForesightConsumerType(verbose=0, cycles=0,**base_params_PF)
#     else:         # Else the upper bound is the solution to the unconstrained PF model
#         conFunc_PF = PerfForesightConsumerType(verbose=0, cycles=0,**base_params_PF)

#     baseEx_inf.checkConditions(verbose=0)
#     conFunc_PF.solve()
#     conFunc_PF.unpackcFunc()
#     baseEx_inf.updateIncomeProcess()
#     baseEx_inf.solve()
#     baseEx_inf.unpackcFunc()

#     # conFunc_PF = lambda m: (h_inf - 1) * k_lower + k_lower * m
    
#     # k_lower = 1.0 - (baseEx_inf.Rfree ** (-1.0)) * (
#     #     baseEx_inf.Rfree * baseEx_inf.DiscFac
#     # ) ** (1.0 / baseEx_inf.CRRA)

#     k_lower = 1.0 - (Rfree ** (-1.0)) * (
#         Rfree * DiscFac
#     ) ** (1.0 / CRRA)

#     if FHWCFails:
#         h_inf = np.inf
#     else:
# #        h_inf = 1.0 / (1.0 - baseEx_inf.PermGroFac[0] / baseEx_inf.Rfree)
#         h_inf = 1.0 / (1.0 - PermGroFac / Rfree)
#     # conFunc_upper = (
#     #     lambda m: (
#     #         1
#     #         - baseEx_inf.UnempPrb ** (1.0 / baseEx_inf.CRRA)
#     #         * (baseEx_inf.Rfree * baseEx_inf.DiscFac) ** (1.0 / baseEx_inf.CRRA)
#     #         / baseEx_inf.Rfree
#     #     )
#     #     * m
#     # #    )
#     conFunc_upper = (
#         lambda m: (
#             1
#             - UnempPrb ** (1.0 / CRRA)
#             * (Rfree * DiscFac) ** (1.0 / CRRA)
#             / Rfree
#         )
#         * m
#     )
    
#     # conFunc_lower = (
#     #     lambda m: (
#     #         1
#     #         - (baseEx_inf.Rfree * baseEx_inf.DiscFac) ** (1.0 / baseEx_inf.CRRA)
#     #         / baseEx_inf.Rfree
#     #     )
#     #     * m
#     # )
#     conFunc_lower = (
#         lambda m: (
#             1
#             - (Rfree * DiscFac) ** (1.0 / CRRA)
#             / Rfree
#         )
#         * m
#     )
#     if FHWCFails:
#         intersect_m = np.inf

#     else:
# #        intersect_m=(h_inf-1)*(1-baseEx_inf.thorn)/(1-(baseEx_inf.thorn)*(baseEx_inf.UnempPrb)**(1/baseEx_inf.CRRA))
# #        intersect_m=(h_inf-1)*(1-baseEx_inf.thorn/baseEx_inf.Rfree)/(1-(baseEx_inf.thorn/baseEx_inf.Rfree)*((baseEx_inf.UnempPrb)**(1/baseEx_inf.CRRA)))
# #        '''
#     #     intersect_m = ((h_inf - 1) * k_lower) / (
#     #     (
#     #         1
#     #         - baseEx_inf.UnempPrb ** (1.0 / baseEx_inf.CRRA)
#     #         * (baseEx_inf.Rfree * baseEx_inf.DiscFac) ** (1.0 / baseEx_inf.CRRA)
#     #         / baseEx_inf.Rfree
#     #     )
#     #     - k_lower
#     # )
#         intersect_m = ((h_inf - 1) * k_lower) / (
#         (
#             1
#             - UnempPrb ** (1.0 / CRRA)
#             * (Rfree * DiscFac) ** (1.0 / CRRA)
#             / Rfree
#         )
#         - k_lower
#     )
# #        '''

#     cMaxLabel = r"c̅$(m) = (m-1+h)κ̲$"  # Use unicode kludge
#     cMinLabel = r"c̲$(m)= (1-\Phi_{R})m = κ̲ m$"
#     mMaxVal = 10

#     x1 = np.linspace(0, mMaxVal, 1000)
#     x3 = np.linspace(0, intersect_m, 300)
#     x4 = np.linspace(intersect_m, mMaxVal, 700)
#     cfunc_m = baseEx_inf.cFunc[0](x1)
#     cfunc_PF_1    = conFunc_PF.cFunc[0](x3)
#     cfunc_PF_2    = conFunc_PF.cFunc[0](x4)
#     cfunc_upper_1 = conFunc_upper(x3)
#     cfunc_upper_2 = conFunc_upper(x4)
#     cfunc_lower = conFunc_lower(x1)
#     plt.figure(figsize=(12, 8))
#     plt.plot(x1, cfunc_m, label="c(m)")
#     plt.plot(x1, cfunc_lower, label=cMinLabel, linewidth=2.5)
#     if not FHWCFails:
#         plt.plot(x3, cfunc_upper_1, color="black", linewidth=2.5)
# #        plt.plot(x3, x3, color="yellow", linewidth=2.5)
#         plt.plot(
#             x4,
#             cfunc_PF_2,
#             color="black",
#             label=r"Upper Bound $ = $ Min $[\overline{\overline{c}}(m),\overline{c}(m)]$",
#             linewidth=2.5,
#         )
#         plt.plot(x4, cfunc_upper_2, label=r"$\overline{\overline{c}}(m) = κ̅m = (1 - ℘^{1/ρ}Φᵣ)m$", linestyle="--")
#         plt.plot(x3, cfunc_PF_1, label=cMaxLabel, linestyle="--")
#     else:
#         cfunc_PF = conFunc_PF.cFunc[0](x1)
#         plt.plot(
#             x1,
#             cfunc_PF,
#             color="black",
#             label=r"Upper Bound: PF Constrained Model",
#             linewidth=2.5,
#         )
#     plt.tick_params(
#         labelbottom=False,
#         labelleft=False,
#         left="off",
#         right="off",
#         bottom="off",
#         top="off",
#     )
#     plt.xlim(0, mMaxVal)
# #     if FHWCFails:
# # #        plt.ylim(0, conFunc_upper(x1))
# #         plt.plot(x1, conFunc_PF.cFunc[0](x1))
# # #        plt.text(0, 1.12 * conFunc_upper(mMaxVal) + 0.05, "$c$", fontsize=22)
# #     else:
#     plt.ylim(0, 1.12 * conFunc_PF.cFunc[0](mMaxVal))
#     plt.text(0, 1.12 * conFunc_PF.cFunc[0](mMaxVal) + 0.05, "$c$", fontsize=22)
#     plt.xlabel("m", fontsize=22)
#     plt.legend(fontsize='x-large')
