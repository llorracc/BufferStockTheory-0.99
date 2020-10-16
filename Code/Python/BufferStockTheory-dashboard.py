# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     cell_metadata_filter: ExecuteTime,autoscroll,heading_collapsed,hidden,-hide_ouput,-code_folding
#     formats: ipynb,py:percent
#     notebook_metadata_filter: all
#     text_representation:
#       extension: .py
#       format_name: percent
<<<<<<< HEAD
#       format_version: '1.3'
#       jupytext_version: 1.6.0
=======
#       format_version: '1.2'
#       jupytext_version: 1.2.1
>>>>>>> 5b74e09e3ebc88455b496d3850f100f5c3bc0656
#   kernelspec:
#     display_name: Python 3
#     language: python
#     name: python3
#   language_info:
#     codemirror_mode:
#       name: ipython
#       version: 3
#     file_extension: .py
#     mimetype: text/x-python
#     name: python
#     nbconvert_exporter: python
#     pygments_lexer: ipython3
<<<<<<< HEAD
#     version: 3.7.4
=======
#     version: 3.6.9
>>>>>>> 5b74e09e3ebc88455b496d3850f100f5c3bc0656
#   latex_envs:
#     LaTeX_envs_menu_present: true
#     autoclose: false
#     autocomplete: false
#     bibliofile: biblio.bib
#     cite_by: apalike
#     current_citInitial: 1
#     eqLabelWithNumbers: true
#     eqNumInitial: 1
#     hotkeys:
#       equation: Ctrl-E
#       itemize: Ctrl-I
#     labels_anchors: false
#     latex_user_defs: false
#     report_style_numbering: false
#     user_envs_cfg: false
# ---

# %% [markdown]
# # Theoretical Foundations of Buffer Stock Saving -- Interactive Figures
#
# [![econ-ark.org](https://img.shields.io/badge/Powered%20by-Econ--ARK-3e8acc.svg)](https://econ-ark.org/materials/BufferStockTheory)

# %%
# Some setup stuff
import Dashboard.dashboard_widget as BST

# Get other tools 
from ipywidgets import interact, interactive, fixed, interact_manual
import warnings
warnings.filterwarnings("ignore")

# %% [markdown]
# ## Convergence of the Consumption Rules
#
# Under the given parameter values, [the paper's first figure](http://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#Convergence-of-the-Consumption-Rules) depicts the successive consumption rules that apply in the last period of life $(c_{T}(m))$, the second-to-last period, and earlier periods $(c_{T-n})$.  $c(m)$ is the consumption function to which these converge:
#
# $$
# c(m) = \lim_{n \uparrow \infty} c_{T-n}(m)
# $$
#

# %%
# Risk aversion ρ and σ have the most interesting effects

cFuncsConverge_widget=interactive(
    BST.makeConvergencePlot,
    DiscFac=BST.DiscFac_widget[0],
    CRRA=BST.CRRA_widget[0],
    Rfree=BST.Rfree_widget[0],
    PermShkStd=BST.PermShkStd_widget[0],
)
cFuncsConverge_widget

# %% [markdown]
# ## [If the GIC Fails, Target Wealth is Infinite ](http://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#The-GIC)
#
# [A figure](http://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#FVACnotGIC) depicts a solution when the **FVAC** [(Finite Value of Autarky Condition)](https://llorracc.github.io/BufferStockTheory/#FVAC) and **WRIC** [(Weak Return Impatience Condition)](https://llorracc.github.io/BufferStockTheory/#WRIC) hold (so that the model has a solution) but the **GIC** [(Growth Impatience Condition)](https://llorracc.github.io/BufferStockTheory/#GIC) fails:
#
# \begin{eqnarray}
# \mathbb{E}\left[\frac{\Phi}{\Gamma\psi}\right] & < & 1
# \end{eqnarray}
#
# (see [Calibrated Parameters](https://llorracc.github.io/BufferStockTheory/#Calibration) and [Definitions and Characteristics Calculated from Parameters](https://llorracc.github.io/BufferStockTheory/#Symbols)
#
# Under the default parameter values, $\mathbb{E}[\psi^{-1}]=0.99$, $\Phi = 0.999$.  Use the slider to see what happens as you move $\Gamma$ from below to above its "cusp" value.  
#
# | Param | Description | Code | Value |
# | :---: | ---         | ---  | :---: |
# | Γ | Permanent Income Growth Factor | $\texttt{PermGroFac}$ | 1.00 |
# | R | Interest Factor | $\texttt{Rfree}$ | 1.06 |
#
#

# %%
# GICFailsExample Widget
GICFailsExample_widget = interactive(
    BST.makeGICFailExample,
    DiscFac=BST.DiscFac_widget[1],
    PermShkStd=BST.PermShkStd_widget[1],
    UnempPrb=BST.UnempPrb_widget[1],
)
GICFailsExample_widget


# %% [markdown]
# ### [Target $m$, Expected Consumption Growth, and Permanent Income Growth](https://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#AnalysisoftheConvergedConsumptionFunction)
#
# The next figure is shown in  [Analysis of the Converged Consumption Function](https://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#cGroTargetFig), which shows the expected consumption growth factor $\mathrm{\mathbb{E}}_{t}[c_{t+1}/c_{t}]$ for a consumer behaving according to the converged consumption rule.
#

# %%
# Explore what happens as you make the consumer more patient in two ways: β ↑ and Γ ↓
cGroTargetFig_widget = interactive(
    BST.makeGrowthplot,
    PermGroFac=BST.PermGroFac_widget[2],
    DiscFac=BST.DiscFac_widget[2],
)
cGroTargetFig_widget

# %% [markdown]
# ### [Consumption Function Bounds](https://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#AnalysisOfTheConvergedConsumptionFunction)
# [The next figure](https://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#cFuncBounds)
# illustrates theoretical bounds for the consumption function.
#
<<<<<<< HEAD
# We define two useful variables: lower bound of $\MPC$ (marginal propensity to consume) and limit of $h$ (Human wealth), along with some functions such as the limiting perfect foresight consumption function $\bar{c}(m)$, the upper bound function $\bar{\bar c}(m)$, and the lower bound function \underline{_c_}$(m)$.
=======
# We define two useful variables: lower bound of $\kappa$ (the marginal propensity to consume) and the limit of $h$ (Human wealth), along with some functions such as the limiting perfect foresight consumption function $\bar{c}(m)$, the upper bound function $\bar{\bar c}(m)$, and the lower bound function \underline{_c_}$(m)$.
>>>>>>> 5b74e09e3ebc88455b496d3850f100f5c3bc0656
#
# Recall that the Perfect Forsight Return Impatience Condition is:
# \begin{eqnarray}
# (R \beta)^{1/\rho} & < & R
# \\ \beta & < & R^{\rho-1}
# \end{eqnarray}
#
<<<<<<< HEAD
# In the figure below, we set $R$ and $\Gamma$ to fixed values of 1.0.  Explore what happens to the consumption function as you move the parameters as far as you can toward the perfect foresight model and the time preference factor up toward 1 (warning: the model takes longer to solve if the RIC is close to failing; be patient).  What would you expect to see if the upper boundary of the figure were extended far enough?
=======
# In the figure below, we set $R$ and $\Gamma$ to fixed values of 1.0.  Explore what happens to the consumption function as you move the parameters as far as you can toward the perfect foresight model and the time preference factor up toward 1 (warning: the model takes longer to solve if the RIC is close to failing; be patient).  What would you expect to see if the upper boundary of the figure were extended far enough?  
#
# Notice that the model with uncertainty gets very close to the perfect foresight model only when the uncertainty is tuned down to the very lowest possible levels and the time preference rate is set to a high number.
>>>>>>> 5b74e09e3ebc88455b496d3850f100f5c3bc0656

# %%
cFuncBounds_widget = interactive(
    BST.makeBoundsFigure,
    UnempPrb=BST.UnempPrb_widget[3],
    PermShkStd=BST.PermShkStd_widget[3],
    TranShkStd=BST.TranShkStd_widget[3],
    DiscFac=BST.DiscFac_widget[3],
    CRRA=BST.CRRA_widget[3]
)
cFuncBounds_widget


# %% [markdown]
# ### [The Consumption Function and Target $m$](https://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#cFuncBounds)
#
# This figure shows the $\mathrm{\mathbb{E}}_{t}[\Delta m_{t+1}]$ and consumption function $c(m_{t})$, along with the intersection of these two functions, which defines the target value of $m$.
#
# Use the sliders to explore the effects of transitory and permanent uncertainty, and of relative risk aversion ρ.

# %%
cRatTargetFig_widget = interactive(
    BST.makeTargetMfig,
    Rfree=BST.Rfree_widget[4],
    DiscFac=BST.DiscFac_widget[4],
    CRRA=BST.CRRA_widget[4],
    PermShkStd=BST.PermShkStd_widget[4],
    TranShkStd=BST.TranShkStd_widget[4],
)
cRatTargetFig_widget


# %% [markdown]
# ### [Upper and Lower Limits of the Marginal Propensity to Consume](https://econ.jhu.edu/people/ccarroll/papers/BufferStockTheory/#MPCLimits)
#
# This figure requires a very fine grid in order to capture the smooth variation in the MPC.  
#
# As a result, recomputation of the figure is too slow to be usable as a widget in real time (with current technology).
