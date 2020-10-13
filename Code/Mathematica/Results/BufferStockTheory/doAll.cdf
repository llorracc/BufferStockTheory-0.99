(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    234395,       4687]
NotebookOptionsPosition[    225261,       4552]
NotebookOutlinePosition[    225599,       4567]
CellTagsIndexPosition[    225556,       4564]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "This", " ", "cell", " ", "contains", " ", "uninteresting", " ", "generic",
     " ", "setup", " ", "stuff", " ", "to", " ", "prepare", " ", "for", " ", 
    "execution", " ", "of", " ", "the", " ", "programs"}], " ", "*)"}], "\n", 
  "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"ClearAll", "[", "\"\<Global`*\>\"", "]"}], ";"}], "\n", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "If", " ", "running", " ", "from", " ", "Notebook", " ", "front", " ", 
      "end"}], ",", " ", 
     RowBox[{"set", " ", "directory", " ", "to", " ", 
      RowBox[{"Notebook", "'"}], "s", " ", "directory"}]}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Length", "[", "$FrontEnd", "]"}], " ", ">", " ", "0"}], ",", 
      " ", 
      RowBox[{"NBDir", " ", "=", " ", 
       RowBox[{"SetDirectory", "[", 
        RowBox[{"NotebookDirectory", "[", "]"}], "]"}]}]}], "]"}], ";"}], 
   RowBox[{"(*", " ", 
    RowBox[{
    "If", " ", "running", " ", "from", " ", "the", " ", "Notebook", " ", 
     "interface"}], " ", "*)"}], "\n", 
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Length", "[", "$FrontEnd", "]"}], " ", "==", " ", "0"}], ",", 
      
      RowBox[{
      "SetDirectory", "[", 
       "\"\</Volumes/Data/Work/BufferStock/BufferStockTheory/Latest/Code/\
Mathematica/Results/BufferStockTheory\>\"", "]"}]}], "]"}], ";"}], "\n", "\n", 
   RowBox[{
    RowBox[{"HomeDir", " ", "=", " ", 
     RowBox[{"Directory", "[", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"CodeDir", " ", "=", " ", 
     RowBox[{"HomeDir", "<>", "\"\</../../CoreCode\>\""}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"CDToHomeDir", " ", ":=", " ", 
     RowBox[{"SetDirectory", "[", "HomeDir", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"CDToCodeDir", " ", ":=", " ", 
     RowBox[{"SetDirectory", "[", 
      RowBox[{"HomeDir", "<>", "\"\</../../CoreCode\>\""}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{"CDToCodeDir", ";"}], "\n", "\n", 
   RowBox[{
    RowBox[{"<<", "SetupModelSolutionRoutines.m"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"<<", "SetParamsToBaselineVals.m"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"SaveFigs", "=", "True"}], ";"}]}]}]], "Code",
 CellChangeTimes->{{3.69823126071101*^9, 3.698231290402529*^9}, {
   3.6982314958202677`*^9, 3.6982315059245853`*^9}, {3.698231596232819*^9, 
   3.6982317610035343`*^9}, 3.698233061037314*^9, {3.698258721267456*^9, 
   3.698258733545535*^9}, 3.6983443864649553`*^9, 3.779207927422429*^9},
 CellLabel->"In[1]:=",ExpressionUUID->"66b1abf8-6e7c-4210-aab1-25591743efb1"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Example", " ", "of", " ", "parameters", " ", "where", " ", "FVAC", " ", 
    "holds", " ", "but", " ", "GIC", " ", "fails"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"CDToHomeDir", ";"}], "\n", 
   RowBox[{
    RowBox[{"<<", "SetParamsFVACnotGIC.m"}], ";"}], " ", "\n", 
   RowBox[{"SetupGrids", ";"}], "\n", 
   RowBox[{"SetupShocks", ";"}], "\n", 
   RowBox[{
    RowBox[{"Print", "[", 
     RowBox[{
     "\"\<GIC fails (1 < \[CapitalThorn]\[CapitalGamma]):\>\"", " ", ",", " ", 
      RowBox[{"1", " ", "<", " ", "GICValue"}]}], "]"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"Print", "[", 
     RowBox[{"\"\<FVAC holds FVA < 1:\>\"", ",", 
      RowBox[{"FVA", " ", "<", " ", "1"}]}], "]"}], ";"}], "\n", 
   RowBox[{"ConstructLastPeriodToConsumeEverything", ";"}], "\n", 
   RowBox[{
    RowBox[{"<<", "FVACnotGICPlot.m"}], ";"}]}]}]], "Code",
 CellChangeTimes->{{3.698256908656096*^9, 3.6982569094394836`*^9}},
 CellLabel->"In[12]:=",ExpressionUUID->"d41dd9da-36a6-41ab-8b91-3000de6af7d3"],

Cell[CellGroupData[{

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"GIC fails (1 < \[CapitalThorn]\[CapitalGamma]):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm["GIC fails (1 < \[CapitalThorn]\[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.7792079392959757`*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"04e67933-a92d-401f-a4be-3c2adff23269"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"FVAC holds FVA < 1:\"\>", "\[InvisibleSpace]", "True"}],
  SequenceForm["FVAC holds FVA < 1:", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.779207939342285*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"97d0f34f-87a5-4399-bfb5-ab04b2672177"],

Cell[BoxData["\<\"Running FVACnotGICPlot.m\"\>"], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.779207939391227*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"d8e12474-32b8-4676-8fb7-ea85b117b9aa"],

Cell[BoxData["\<\"Running cFuncsConvergeSolve.m\"\>"], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.779207939438195*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"6e22531a-9cd8-4cd5-b976-a87d4999ee45"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"Solving for \"\>", "\[InvisibleSpace]", "100", 
   "\[InvisibleSpace]", "\<\" periods.\"\>"}],
  SequenceForm["Solving for ", 100, " periods."],
  Editable->False]], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.7792079394874697`*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"1e2ede76-6b31-4654-a8cc-c1a9e4d6f639"],

Cell[BoxData["\<\"Constructing TableOfcFuncs.\"\>"], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.779207949525099*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"a8ef65fe-89c4-4d28-9096-7d3a10165e65"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJwV0X9Uy3scx/GtElbS+tCJtFam0U/lR7rk/VHObbdf51Ld7i2u27QV0yrH
7nEr040Qokiispv8OLg1/RKhS350U3ZphFNuafIjvrXtuy9brXZ3/3id53n8
/XLjp68XWNBotCjz/m+llG/tn5y9erI40YEnIOC+kh0Zz/4J/nW/rIgSEmB6
2LqHzd4CrQ36gzEpBFTeKXSdwv4NpM9PWG7aQsC2YEnaV9cCmHR6opOkEaAc
Ty1Ru56CCdnaF9USAqb2DnIJ10tgrPGpMOUTUPVIlvnJ9QaMdZgWNF8goFZe
0LvN9xGYOP6rLhIEpMDTU5+3K6H+wbJBld8IiIcWqRprX0FAxJcPyowRYLjt
5favGICbZKh2bfMIHLHv9Kz6RQWaN8mHLAwjwO+N/cuy6x0EkA7cNXgUMh/s
5adzhwE+5sxfsm8U6jJsY5y+I8DAaZFnto9CVbZoeHG8GvrXhMicpqohT2Zc
p/usAadZxbWshWqgKQfwrSwSml8Gi6U8NXjsEO6M9aSg19dffkakhrfUyR9s
bn+BHq7dCsFhNYQPbd11LFMPcfX+IZ/laoh+W+TFYo3BSr8GY1e3Gobv8XP/
rhkHfTTLFEOqwZfZ4xK6aQKCaE/yyh01wAAqqY+chPWxouiCQA2EEQlf3eNo
eDQoqjwwUQMv25LpCd50rGUWloFUA00H7v/Mpui46/C118QZDQinSAYUCgvs
dcrj3IY2DWzent1ke9oSJ/Fy6zNVGvBL8VJEJlnhyY+BmQOWWvjHwdtGEjQF
s1yW183kauFmbV65t6U1diRdgobCtJBN9/y+67U1Pp4QGZIt0gKjL4snbpyK
f218Ob71iBaGLriVyHKmYb+66AmaXAslC+dY3YibjsVgkxvfrYWi08L2JDYD
78moC48ltZBQslFh+56BTcebHlxGJOjXnjfIWm2wiUdru7ucBNVQyM62/ba4
54+l1rvjSTgb7O/8OGkGDjgo7zSaf6jJlzBTfOyw0HHWK3YFCfvjNkdYUnbY
VNJTeuYWCcv6qi7tfzwTu5zvf97XT0LZovKaxxH22OHH7g13aTrYfaewLOKG
PT5cYSMQcnQQ5Rx3/hGHiUXKsy6CMB2sEbcnMguY2L1mPouRqgPZPD6ni2Li
jU6fZOmHdMC5d7E0OtEBZ3hUbMn+UwdFPm2e3a0O+IPHFdVAlw6EpNXTDk+E
312n9VurdcCv07ILjiLcQoC70p6CbXkxxvBihJ89XX1CwKRAEtP4wvY4wkRT
8DS92QcoyZGiUoTZ0pUj8xAFtUGG8ZOVCO+zC2wRzqbAcNfUc+EKwuv8fNeP
zaGgqNu28H47wh8y5uW5zafgdHVa6r4OhC3inKkGs6t3KEJ5nQg7B81N/ZZD
wTXHorFOBcLRdKdo0QIK+hJQqvI5wg3FaG4TlwKuak7ooAphaT2jnudNweLG
LNa5IYTLSqcv6DX7m/xeg+A9wvVZ08rSfCiI5FZe/TiM8NsQa+kxXwq2i9gs
jQbhcCU9vG8xBTmrfjfUkwgnN9Nui/0pyJ8x+GwHhfCucpMfPYCCMnn1Ib0e
4aubJ2Z7LKHgbK5VSssYwh1hxgPXzb6yThCSY0R40Gt8PHwpBY3uD11WTyJs
nDkmfm12K+lhMJkQnq3Tv0lfRsF/kXxVfw==
        "]]},
      Annotation[#, "Charting`Private`Tag$70085#1"]& ], 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1: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
NbFicnqaID/b7TXTWSrGf3yNo/w=
        "]]},
      Annotation[#, "Charting`Private`Tag$70085#2"]& ]}, {}}, 
   InsetBox["\<\"\\!\\(\\*SubscriptBox[\\\"\[DoubleStruckCapitalE]\\\", \\\"t\
\\\"]\\)[\\!\\(\\*SubscriptBox[\\\"\[CapitalDelta]\[ScriptM]\\\", \\nRowBox[{\
\\\"t\\\", \\\"+\\\", \\\"1\\\"}]]\\)]=0 \[LongRightArrow]    \"\>", \
{2.5, 1.1220798104094762}, {1, 0}], 
   InsetBox["\<\"  \[LongLeftArrow] \
c(\\!\\(\\*SubscriptBox[\\\"\[ScriptM]\\\", \\\"t\\\"]\\))\"\>", \
{0.8333333333333333, 0.6669616681060017}, {-1, 0}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"\[ScriptC]\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0., 5.}, {0., 1.3255461527871877`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->None]], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.779207951310423*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"978070c3-b28b-4bdd-b302-cdf829532529"],

Cell[BoxData["\<\"Exporting:../../../../Figures/FVACnotGIC\"\>"], "Print",
 CellChangeTimes->{3.6982334796484222`*^9, 3.698257135727975*^9, 
  3.698258173888979*^9, 3.739779369516377*^9, 3.739780308617578*^9, 
  3.742207949152581*^9, 3.779207559156433*^9, 3.779207951428873*^9},
 CellLabel->
  "During evaluation of \
In[12]:=",ExpressionUUID->"32be7860-3ac2-4312-93c9-7b27f51a2609"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Show", " ", "convergence", " ", "of", " ", "consumption", " ", "rules", 
    " ", "iterating", " ", "back", " ", "from", " ", "terminal", " ", 
    "period", " ", "T"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"SetParamsBaseline", ";"}], "\n", 
   RowBox[{"SetupGrids", ";"}], "\n", 
   RowBox[{"SetupShocks", ";"}], "\n", 
   RowBox[{"ConstructLastPeriodToConsumeEverything", ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "Define", " ", "terminal", " ", "consumption", " ", "rule", " ", "as", 
     " ", "the", " ", "one", " ", "for", " ", "the", " ", "finite", " ", 
     "horizon"}], " ", "*)"}], "\n", 
   RowBox[{"CDToHomeDir", ";"}], "\n", 
   RowBox[{
    RowBox[{"<<", "cFuncsConvergeSolve.m"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"<<", "cFuncsConvergePlot.m"}], ";"}]}]}]], "Code",
 CellLabel->"In[20]:=",ExpressionUUID->"2056b67e-5f44-4c31-98a2-1fc7a665dd08"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running cFuncsConvergeSolve.m\"\>"], "Print",
 CellChangeTimes->{3.698234069027472*^9, 3.698257149181452*^9, 
  3.739779387056981*^9, 3.7397803253072357`*^9, 3.742207962213278*^9, 
  3.77920757562821*^9, 3.779207954343091*^9},
 CellLabel->
  "During evaluation of \
In[20]:=",ExpressionUUID->"efb5079c-ff64-466b-b161-a4841e82dbdd"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"Solving for \"\>", "\[InvisibleSpace]", "100", 
   "\[InvisibleSpace]", "\<\" periods.\"\>"}],
  SequenceForm["Solving for ", 100, " periods."],
  Editable->False]], "Print",
 CellChangeTimes->{3.698234069027472*^9, 3.698257149181452*^9, 
  3.739779387056981*^9, 3.7397803253072357`*^9, 3.742207962213278*^9, 
  3.77920757562821*^9, 3.779207954385769*^9},
 CellLabel->
  "During evaluation of \
In[20]:=",ExpressionUUID->"6803fc8b-003a-4c1e-9fd5-04274d3c3b15"],

Cell[BoxData["\<\"Constructing TableOfcFuncs.\"\>"], "Print",
 CellChangeTimes->{3.698234069027472*^9, 3.698257149181452*^9, 
  3.739779387056981*^9, 3.7397803253072357`*^9, 3.742207962213278*^9, 
  3.77920757562821*^9, 3.779207962283885*^9},
 CellLabel->
  "During evaluation of \
In[20]:=",ExpressionUUID->"24dfbab6-1760-49f3-b8a1-c4758981e1a1"],

Cell[BoxData["\<\"Running cFuncsConvergePlot.m\"\>"], "Print",
 CellChangeTimes->{3.698234069027472*^9, 3.698257149181452*^9, 
  3.739779387056981*^9, 3.7397803253072357`*^9, 3.742207962213278*^9, 
  3.77920757562821*^9, 3.779207963805439*^9},
 CellLabel->
  "During evaluation of \
In[20]:=",ExpressionUUID->"74b146c1-6beb-4a8c-a172-193928c96aea"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJxNxWlM0mEcAGB0OchjQFJ55EEpsy9Ka4lWBIa1sDDHZJapo/KgmtEQTVbi
vJJyU5ZXanZYLCxnpE7n+pBpEyPLY2Zk9VebB2ZpcyKgKV30e/vw7KGeEvOT
7HE4HO+X3x8ycyxlDtf24XDsP5cG+QjasRQWjv53J6aRW4BdZOFsaznC8HNY
IavDtr+2PCwBq2T52h5S0DtisAesftsNM1nZ0VgbS2PbrdpvlI9p/7uknzeq
h8VB3xKWZZ/hOFzNfXOSAQ5UUV5JB+fg+dwRzyrRAhxaq+wMVhvhnjldf73e
DIffcstlDq7AzYzebSRnK3y1ktuSg7dj/3skUOyYnGMP+z3V6s94roOTl+rN
q1UO8F3aM+WTEDwsl1R87OsjwPxUk0x+2BH2jS8qOTLtBE+uqJceprjA90os
bwMIRDjX50qLIooEN0YO0Q4QyXCMeY+AjKEvy0QN/rc3wBJCRrw4zhWeINfq
erZT4MEFhfDsDJoZWdzk2b4RlrVJE+wLNsF0s8/OHZzNcGLzRJeY7AZTDp7P
WhpAl0/plU3F7nCpXbxQfsIDdl5UHbvu4QnbnyS4tM6g01RBX6iPtsCtJga1
S+QFp784TpEGe8MaEZueuoROKWQTMrp9YNN7klcs1xe2fDgdUatGh9Z0CQxE
KszoLkiPuYD2zgzZP/4GzZk2fZXs2grTOt0bAsrRCsHR9UMV6FlDfnL2DbSG
+N13uAa9O767PK8OzTNLsrHHaGlgL79Mhx5+bqdh9aJDBQyX2dfotUt12rAB
tOJl5t75d+iaRH9axCR6zRSbZ5xCC4uUY3cMaL+mlWrTLLrROkBULaBJpfjU
qEV0Go2pWzGiQ3jqfL4FXT32aXx1Gb2a5sqq/4EW4rk3o9fQndVyi9WK/gnX
+zMX
        "]]},
      Annotation[#, "Charting`Private`Tag$115546#1"]& ]}, {}}, 
   InsetBox["\<\" \[LeftArrow] \\!\\(c\\_\\(T\\)(\[ScriptM])\\)= 45 Degree \
Line\"\>", {6.5, 6.5}, {-1, 0}], {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJwVkXs01HkAxYcKaRjD/EopZn5htdtixyKK79X08pi2aCJhvRIrsR6Vs0X0
QHXi5FERtoew2kJirW1btBSa4kjW1mBTxIYc5oFh7R/33HPP+Zx7/7i8wEj3
A6oMBkO4oP99h1ygyFpyzpHBwE0pP9Ux08JIVCs5SBjezLfl/BCyzGHK+Yzk
KDmpZ3TiJP8IaRb4bwmXpBBulJlLKP8sMWnOdvKTXCYnDX+29OHnkM5Uyz88
JcWkJG5s7V7+bXLnw4nEPZIagusZazz41UQ/17jXXdJMmLYBubv5TQs5/YWw
t5t4WTwId+O9IpEWH/2m4/8hTse7lSOr+okPI++W/MAQEcWIvGT+74l5Eac1
tmOU5LBb1IPFI2QsucfgaugEaVztKIg3Hyd2+RkNNiVTpHyza9+IxwR5Mtry
orRbTtS+1FxsYz1JthToJzt0zJBer+jwqp4pct+2ba0Oc55cYTduY+TISNpl
56okdRXkHU1SaV+vID3mkZohSaoYODx36PeaaWJc19wdZrAYWWURmYkBsyRE
WipXXl2CinUPq7Q/Ksl100cZFRvUsVfs1pF+ZZ4kROe8fv5cA7pGk+1l+Qy4
R8jiE1w1MXwvaqbYXwVc3/PpboPL0K/6QPHOShXvZkqkPx3UwqhcKB2Qq+Jm
uuKlmQYL9Z+6oq3Fi5BsdLYqdZcOetPqmWcLF+Puzk7TrSw2Kl6KraoDl8BT
vlHElrBxSNoaJrBRw/H40DsmhbpYvjbsdu2MGqI1jvhG+uhh2CxNKXiojgF2
fsuTdRzUbx4bsEjXQMdEqv93Hzg49cjeX8tjKRx2Xqw0qKUgHJGUCD/TRHxN
rJ/qmeUoYPI3Fcs0YSk3svpKsAKzqYFcWe0yBN8faIxk6yNlX5B22QUmONsO
n5C264Ofb2/ouVsL2e+7MyovroTCrd+aq6uNTBVf/4T9q+CgUvFG+FYbzMki
r0urDLDr6/FbcbdZUA3Q0Kr+YICoyjw1FQcdxBRZDPPKVuPe0pfVjwt1UC2z
5TWGrkGLyODQZQYbcY/3cWJtDGG877exvDA2ykNhGSE1hMm2aa2CVjYOpkDj
SJMR2lbPjLdb60L2l84ab2cuwqd+neMU6ELxd5BLfgkXyaVvNu2d14VdXqNo
iMVDUJTY8WmoHmybzsR5RvGQdXd9jX2rHgyPbdjcL+ZhoqdhsO4LDgSDsn+j
rWkMJHZ1Hc7iwLRh5R2zbBqaIeHXuFIOUkXfLO3MoXFfEdHZKeNgZOh0SOIV
Gk2nA5lpCg7KWePcrjwaaRm8459mObD3bco+dYOG/rDMu2HRwg/y6ETJPRo8
pcbyYDaFWPM296wWGq9XvEoqXk+hq16lnLTRKJo0+mW/OQU7ka3WyDMaMU77
R1mWFOZ+uNHs1E7juV2p9zErCqlPj20ae0XDlXmT72xPIS/YxNTlHQ1xGLtv
ePsCL/M+NfWeRo4ymSp0puB/PqPvx6GF/o2DLh6uFIwrZ3JlIzTmH6c8qNtJ
4e58O6toggbr+3XnLogo6GSqR+yapHGhzvIRPCnEmDq0zEzRkLd9PjnpRWGD
sOS0u4LGM3eZr68Phdy+N/3KaRq7xU8vsf0oKGP0SOksjSnD9OY/v13YV3e+
tmeOhmDH9tn4AAoNuQmK+Xka9cIJS/MgCv8BWUYpig==
        "]]},
      Annotation[#, "Charting`Private`Tag$115593#1"]& ]}, {}}, 
   InsetBox["\<\" \\!\\(c\\_\\(T-1\\)(\[ScriptM])\\)\"\>", \
{9.5, 5.3468559918781855}, {-1, 0}], {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1: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
6fNuOYH/B06bXag=
        "]]},
      Annotation[#, "Charting`Private`Tag$115781#1"]& ]}, {}}, 
   InsetBox["\<\" \\!\\(c\\_\\(T-5\\)(\[ScriptM])\\)\"\>", \
{9.5, 2.6214863319078288}, {-1, -0.25}], {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1: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
        "]]},
      Annotation[#, "Charting`Private`Tag$116016#1"]& ]}, {}}, 
   InsetBox["\<\" \\!\\(\\*SubscriptBox[\\\"c\\\",RowBox[{\\\"T\\\", \
\\\"-\\\", \\\"10\\\"}]]\\)(\[ScriptM])\"\>", {9.5, 2.0489945755670407}, \
{-1, -0.45}], {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1: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
        "]]},
      Annotation[#, "Charting`Private`Tag$120246#1"]& ]}, {}}, 
   InsetBox["\<\" \\!\\(c(\[ScriptM])\\)\"\>", {9.5, 1.7463282416489407}, \
{-1, 0.25}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"c\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 12.}, {0, 7}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->None]], "Print",
 CellChangeTimes->{3.698234069027472*^9, 3.698257149181452*^9, 
  3.739779387056981*^9, 3.7397803253072357`*^9, 3.742207962213278*^9, 
  3.77920757562821*^9, 3.779207963914186*^9},
 CellLabel->
  "During evaluation of \
In[20]:=",ExpressionUUID->"89960266-2766-48bb-b788-ac85309bed99"],

Cell[BoxData["\<\"Exporting:../../../../Figures/cFuncsConverge\"\>"], "Print",
 CellChangeTimes->{3.698234069027472*^9, 3.698257149181452*^9, 
  3.739779387056981*^9, 3.7397803253072357`*^9, 3.742207962213278*^9, 
  3.77920757562821*^9, 3.779207963971027*^9},
 CellLabel->
  "During evaluation of \
In[20]:=",ExpressionUUID->"ef69b3d8-8d12-45b7-945a-5dc036277cad"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Show", " ", "characteristics", " ", "of", " ", "the", " ", "converged", 
    " ", "consumption", " ", "rule"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"SetParamsBaseline", ";"}], "\n", 
   RowBox[{"ConstructLastPeriod", ";"}], "\n", 
   RowBox[{
    RowBox[{"aGridVecExcBotSmallLength", " ", "=", " ", "10"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"aGridVecExcBotLargeLength", " ", "=", " ", "30"}], ";"}], "\n", 
   RowBox[{"SetupGrids", ";"}], "\n", 
   RowBox[{
    RowBox[{"Off", "[", 
     RowBox[{"InterpolatingFunction", "::", "dmval"}], "]"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"SolveInfHorizToToleranceAtTarget", "[", 
     RowBox[{"mTargetDiffAtSuccessiveIterations", "=", "0.001"}], "]"}], 
    ";"}]}]}]], "Code",
 CellChangeTimes->{{3.6983444239870787`*^9, 3.698344424438067*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"80c759c5-2435-4bcc-9424-8e42d9430a48"],

Cell[BoxData[
 TemplateBox[{
  "InterpolatingFunction","dmval",
   "\"Input value \\!\\(\\*RowBox[{\\\"{\\\", \\\"0.10644229426223273`\\\", \
\\\"}\\\"}]\\) lies outside the range of data in the interpolating function. \
Extrapolation will be used.\"",2,33,1,21399584056369577164,"Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.698234089299818*^9, 3.698257161062479*^9, 
  3.7397794049582253`*^9, 3.739780340574188*^9, 3.742207974662705*^9, 
  3.779207588535575*^9, 3.779207968299864*^9},
 CellLabel->
  "During evaluation of \
In[27]:=",ExpressionUUID->"9b41f51c-71e9-4f2a-92c1-d035c6948f40"],

Cell[BoxData[
 TemplateBox[{
  "InterpolatingFunction","dmval",
   "\"Input value \\!\\(\\*RowBox[{\\\"{\\\", \\\"0.10644229426223273`\\\", \
\\\"}\\\"}]\\) lies outside the range of data in the interpolating function. \
Extrapolation will be used.\"",2,33,2,21399584056369577164,"Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.698234089299818*^9, 3.698257161062479*^9, 
  3.7397794049582253`*^9, 3.739780340574188*^9, 3.742207974662705*^9, 
  3.779207588535575*^9, 3.77920796843867*^9},
 CellLabel->
  "During evaluation of \
In[27]:=",ExpressionUUID->"a9fb8807-b320-41cf-98dc-9b8aef15e8c5"],

Cell[BoxData[
 TemplateBox[{
  "InterpolatingFunction","dmval",
   "\"Input value \\!\\(\\*RowBox[{\\\"{\\\", \\\"0.10644229798901306`\\\", \
\\\"}\\\"}]\\) lies outside the range of data in the interpolating function. \
Extrapolation will be used.\"",2,33,3,21399584056369577164,"Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.698234089299818*^9, 3.698257161062479*^9, 
  3.7397794049582253`*^9, 3.739780340574188*^9, 3.742207974662705*^9, 
  3.779207588535575*^9, 3.779207968488914*^9},
 CellLabel->
  "During evaluation of \
In[27]:=",ExpressionUUID->"cf773dc9-f84e-418a-9644-8c79c607eef0"],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"InterpolatingFunction\\\
\", \\\"::\\\", \\\"dmval\\\"}], \\\"MessageName\\\"]\\) will be suppressed \
during this calculation.\"",2,33,4,21399584056369577164,"Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.698234089299818*^9, 3.698257161062479*^9, 
  3.7397794049582253`*^9, 3.739780340574188*^9, 3.742207974662705*^9, 
  3.779207588535575*^9, 3.779207968540695*^9},
 CellLabel->
  "During evaluation of \
In[27]:=",ExpressionUUID->"f7869f45-2857-48d5-a76a-535fe1090d19"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"CDToHomeDir", ";", 
  RowBox[{"<<", "cFuncBoundsPlot.m"}], ";"}]], "Code",
 CellLabel->"In[34]:=",ExpressionUUID->"405e5899-8a16-402a-9029-bff464525957"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running cFuncBoundsPlot.m\"\>"], "Print",
 CellChangeTimes->{3.698234144135056*^9, 3.698257194997134*^9, 
  3.739779446555623*^9, 3.7397803885211487`*^9, 3.742208005854062*^9, 
  3.779207621158955*^9, 3.77920800043293*^9},
 CellLabel->
  "During evaluation of \
In[34]:=",ExpressionUUID->"ea1a73e1-5c9a-4120-98bf-6b292028d5c9"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1: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
JtHB1O0fqVoC/wcFQi22
        "]]},
      Annotation[#, "Charting`Private`Tag$230044#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.005], Opacity[1.], LineBox[CompressedData["
1:eJwVxXk41HkcAOBx1ETNE1IRj1Cp0WFc0xfL56OiKMV0iFKMazTkGFMqZyYd
lKJjS0SIzRPt0KAeWZ4ZIl2yW44cWXc7v0hNKdndP97nNeKGcwKVaTSa23/+
3zh9Oj/HIM/BJVsjbzRut0PlHObSMF4C2Og5MiYlllAXU1qwipcOOu18zSbJ
RmhgRQbP5t0COknKLJfshCdprVs+B5dBwlBqW7HEH5psk6s/BNeCLWgK8yUC
aL7UGTkc/AJ0xnbKciXJ4FpD3z4Y3AN0R2HYLUkmPGOw1VR9PkKsFl+5+1wB
bEh3+qNox1ewPeEuXH6qFALNphjmDBpyhNNzi00qwI0ZOL5osyo6oyzuXXQ1
iNvihE1kDmanrFQJ5z0GOy3TMtWEeajLitfW6K+D4O8Z2YV7NTC92+uT3ykp
hDcMWZa5aaGkWbnLb6oBznnPXjEdqo3xtIHLkQVN4N94IsictwgVgsueZkYt
UEfX9eB76aAe0zoo6NJzMNdMvDoSvQSpzNO392S9BN9P9mu2h+qjqUXnIo83
ryAvR6avOG+AVsKtgtdrX0P5BdvOVo4hantVCLXi2yD6ob179jYjfNqpEldc
+SfUNhdOnN1njDtVIkIb5r6BkM02NSF7l2F5U72vnctbuFls/oB/aDn2W1nY
k7x2uPSpJini6Aocxhu14xMdMHhXeIQXZYKNY8POyuu6QOqc8evJkytRaLdL
ciP5HSjt6HifnrgKfzDvmJ6r7waao0Qp9xgT91Z/3MT+3gNnFivcWk+bYv2X
kmXWRb0Q4e1fr0hejZt6OUXHnfqgL8kqAK6sQTP9OUtVx/tAO/N6x9m8tSgq
rh7hX38PdzRMjzVmrUMnUTc7gd0PdVFLnVaWmOFhsWbMX739kGOYq2+/i4Uq
rCq79oS/oSZ2isZ7yULVn96ch3oDYLSV/mOZpzkeNpjn0yMdgIoXzNT2NnPc
eIE1WsYdhLSGnyxDHwtMdPfnSxlDkCkYOeTbZYFMrlq46N4QxC40mG/sZYkO
0hKZsesw/Mac1Rzda4kPY/ZrzJochtmTSrp1B6zwdmziu4yMEShi/R6fM2SF
E63inACHUWBy726fDrPGe8f6xNpDo9DpUi3ePWaNbeHJLhGiMWjNP74WBGwM
qLJsm2/2Ab6We/xiPMHGg+6efd7PP8BMVdSDlMPrUUaOOooO/QNbWc5OsZ/X
Y6ag8Mr4Ajk0+piF8AUEn087h6qL5aDlz3uULSRoK7u5r6VCDgd4eYyXRwkW
pU24XqiUw5eoBWKrWIJJejlMrRo5LD+jmJoWEbS0+Tyo+0QOieLatItXCV6N
zvdjdsvBlu5+/0E1wYNjM3u2qFOQMu+s8vAjgi3i3c7qDApeadbvWvKYIDle
Yt0ynwKevtW3+HqCmmqe2u4LKbhmrrNhy1OCUpPSV56GFEzu633d0UVwFXf/
tmA2Beina8LoIXiFKbZj2lCQGsSJgT6CSuP01WN2FBhHSvULBgh2JJSrhTtS
4JFSHBgmJ3g+W73xyDYKbqb2Vd76SPBbgK+E7KBg+OIS9dYJgkFrJIVTHhQk
ZqWVshUE8ZGfKN6TgpZcGS3kG8F7JysF6E3B4js/OVnfCeq6MvyVfSjglqwv
fDZNUKTpz5EepKD0foRiZobg+NsqxxQuBf8CFJ84ig==
        "]]},
      Annotation[#, "Charting`Private`Tag$230105#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], Dashing[{0.005}], 
       LineBox[CompressedData["
1:eJwVxXk01AkAB/DhyZVhUMJO7so4MsOY3y+V33fLoETlkZoiZTFyXw2FlJ5c
rWQrkkESnYQuJcdOQmNpZNtFT9pUylq6RGF3//i8j/HeSM9AeRqN5v6f/zfJ
nS0XG5Q5Mnc52LeOljjeVmYZhgsPUeo+g302zslUS8L1C+bCXOrsmI/8BP84
1caODlYUllD+t0/p9vCLqfYcmevn4Gqq9Vy9aTP/GtXhkHZ3LLiJitVwYt3h
N1KdeQPRb4O7KWn7Qqt6fhe1sVHJ43XwEJVQEWldy39OddF5Kgq+E1RjhNLq
gdRxal0uv7ly81fqcZnPtmdVX6hAmxk6h07DTIGkjz42S7mzAid1XBTwxFF2
Ley1PGqfJsd3kMoQULqS9HxFrNayqFY4pAbxrTO+obmqCP52srhiOwP8+gDB
rQR1RLa9sat214Lmi3V9Ag1NZAkUl82GLYJf2cSDJhVtBDw6GMQR6uBhyAZZ
ystFaFHS2xq6Qxe+8a5LJm/ogKOZeno0Th9ea14Vt1fpwv/jWiuPMCYCVS09
ZpL1USZ+yJw6boCn+erIO8BE3c8OAzJPI8T5FwQMhBsgrmHtluJNxtA5G/RH
k6ERmjorPmTuNEH5nu4SJ6YxQlxWNYZsN8X9q/SkL0omOFfFuRm6zwxHvfWn
BUqmyPvYeDhKtAwjhjPqevJmeH05fr8wZjl6w6tXKYyZQeJ8suDIkRWI1rNb
cH50GeQ297/MTTVHkWvOSNjvy0H78ZZcaSILfoV3/PIerEDGkil32TELdLvU
JQgbzBElCGidSrNEd2JaZVgFC8OHuT9Rp6yQomIiMr1ggUX5hf2ZZdaQNOQP
2YktcZFhkfioaCUK/unfFX3MCi0xhvwVV2zww5GJA3uOWkNsVMpc68WGVcHA
tZSolWhMmqEJe9jo6y5M/OxjA2M3pe+mPhwU2GrH5rLYqO9mZf/5lANVSlLX
IGYjp22ObeRrC+8Dg05NSznIjx3d5z9oiyDRbn/BLxwkLTbQMNlhB6cFm1zP
K9viEmtBZ9wLO0y3lKT+mm4LxU9yei1+XMTDb/3B77aoZN9IEb/hov3vtG1q
SXZg7b3sMRtujzeW2ryN03YY2HC31vu9Pbos6aUGEVzIyg9YU7E8ZAsiBNIx
Lr7WbV1j8oEHDTeHEkaAPebvxNxMjyCwWxpZI/fMHm5sZ37SZwIZSWpaUi8e
HvnahITGkhCNa89ZdfKgFSC8VxxPgibKZK6S8uAnLKP3iEhkzc858H/j4UuM
di03iYSY8U7kK+PBLGNqZvYoCYlt8+Txfh5Sa5tyTpwmoSkKGxl/x4OD0paa
m3dJXJ2XSGsWEkhXy5R/e48EkeHw/j6dwBPNVi/9BySaGTUqHRoEhEzudEor
iV7jIudhbQJnOLrrXB+TmFkf3azJJPBp54ve/kESrhlL62OsCGCP3nL6EAkZ
I1+WspJAdpBnAjVMYmeh8mQWm4BJtIR5YYRExOWP1uVcAlvTqwLDx0mclnZU
9q4hcC57+HbJBAlDb6ptyJHA2xP6qrIPJC49r3/1HgRSi3Ku86ZINI6XGCvw
CUhLH9JCpkm4iBaD4UJgycU5z6JvJHrms/yYGwjsvUJUdM2S2JFBSzZ3I3C9
Jmpqfp7EX4z9RVx3Av8CwR8XDg==
        "]]},
      Annotation[#, "Charting`Private`Tag$230152#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], Dashing[{0.005}], 
       LineBox[CompressedData["
1:eJwVz3s0VAkAx/GZKaSoe+9cwnqFyiivTNwezC95bYXMqiXpFDEzqTRiUchr
xaYUPYlYRHV2FCnD2rzy2rXV0Kmojc5R2tSZ5NFLdvaP3/mez5+/RSGRwjAO
i8XyVu3/muVMlxYZl7g8e1tW38EjcHsOz2Sf+IiAcTM6o2tFoDlOVmYpzhHk
5p+JDFO53U4qUhdfEnh6ZljMWkagM1vhNSGqEtwoFp1wWU6ga3WafFR0R5D2
g1VIrQ2B7lMD0hHRPQFPXqVZ6kBgQ6OGz0vRc0F0en1AkjOBHm1HzdnBSkHA
sF/MMyEB1xz3pgrfjwKr604cRTiBMNvP2vbaLGiqJQaGHCLgzQt7r+s5G3wL
N9uCHALVfYkxXcwc+PwWGCMpJbCGsqqafUQLN1nvVw3WERB9yS0sDyBg+c+r
zrEeApHtrxyqvClkLbbuzB8i8Ms29cXTe2kwTuPubyYJhHYcDrcX66K3WpP/
YC6JZg19v4hAPSTUJY0KjUnYk8lnX0cbICozxjzRgcTOD87LffYaYmtLffda
TxIlRXcNp44b42h7irJsO4maE6sHFEJTtPlXDlZKSUTXO28u3LQIyk1G61x/
JnGnu3wsK8gMkgW0aXo+CYnnqkZJgDn+XhMYGSQjcbHSvjZijwVSV5g6D7SS
OPWhMeVA7GK41ng8nHxM4uXVmJ/EUUugLGx4VjFKos0j93xq6lL8K6zezeZQ
YPv2v8hJtkSvdCpIqUOBte4Wuziehy6Di0aHeRQyF055K45aQetES7DMhcKB
baEtU2nLsDbCaX6skMJQCn+34MxyyCkb5xERBTrvQn9WiTXWu6U7TiRQuExY
xXcU2OD355bF505SaI4ycV96zRYp7r6ZL8opFJkWGzr724Gv0zbYIqfQmPCZ
Jb5vh/H952cJeigs2qjx1fxHe7Dz3pWFvqBw8x7v2JM+e3w1zbtlNEkhu/2b
nWnwCqyPl3skz+Mi7+DrPTufrkD8GhvPOBMuEnSMF5gFOqDhKIfScuDiCk+t
O3rQARuKAoK8vLhQH2frN+/go9N4mjbYzkWF3Y2kold85ErMvU9LueCFXPWZ
3rcSEpcrvlczuBj4Xl695c1K2CQmtmzJ50JReshacNARgozemitVXHys8Vtr
Nqbyp1idvFYuZuqiajP2O2HT5OF1eo+42Gjn4Z4w4YTLjexR91EuOoJtJREH
Gbx991Bdk0WDChU3FMYw6K9octul8g5xifb9WAZdO6+lylWejOJW8xMYlCmS
v0nYNCwypz5PpzPYdmvZZDeHRnL1neyTZxm0J6YMZ6vRWK2x+XqtnMElLes2
Yh6NDK0szkgDg+N3F3IkKj8gW/wN/mBwKImDZpXFhvxPSS0MtigfNUi1aJyz
13P1+pOBVl9qjUKbxnjQYG//UwZxBY9/PU3QwC79JdrPGYT7tw6OqnwsXBgn
GGLgry0zdidpmEnbDMuGGdgcScufUNkvozJs3zsGwyE2uVu5NC4eG7p9SclA
8Z3+fZnKIycN5irGGDT1zZqvQav+FGTLHKcYFHg8ybqt8l/Fd1mSTwyyZlo7
FujQWHj5m7DgC4PYOpmaWOWQa07lPdMMdksvrG9SWXb9wNTMDAOhVXqKni6N
/wARFPxn
        "]]},
      Annotation[#, "Charting`Private`Tag$230248#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.005], Opacity[1.], LineBox[CompressedData["
1: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
an6ehqvO8QRlJR7+Br5WCWM=
        "]]},
      Annotation[#, "Charting`Private`Tag$230199#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.005], Opacity[1.], LineBox[CompressedData["
1:eJwVxXk41HkcAOBx1ETNE1IRj1Cp0WFc0xfL56OiKMV0iFKMazTkGFMqZyYd
lKJjS0SIzRPt0KAeWZ4ZIl2yW44cWXc7v0hNKdndP97nNeKGcwKVaTSa23/+
3zh9Oj/HIM/BJVsjbzRut0PlHObSMF4C2Og5MiYlllAXU1qwipcOOu18zSbJ
RmhgRQbP5t0COknKLJfshCdprVs+B5dBwlBqW7HEH5psk6s/BNeCLWgK8yUC
aL7UGTkc/AJ0xnbKciXJ4FpD3z4Y3AN0R2HYLUkmPGOw1VR9PkKsFl+5+1wB
bEh3+qNox1ewPeEuXH6qFALNphjmDBpyhNNzi00qwI0ZOL5osyo6oyzuXXQ1
iNvihE1kDmanrFQJ5z0GOy3TMtWEeajLitfW6K+D4O8Z2YV7NTC92+uT3ykp
hDcMWZa5aaGkWbnLb6oBznnPXjEdqo3xtIHLkQVN4N94IsictwgVgsueZkYt
UEfX9eB76aAe0zoo6NJzMNdMvDoSvQSpzNO392S9BN9P9mu2h+qjqUXnIo83
ryAvR6avOG+AVsKtgtdrX0P5BdvOVo4hantVCLXi2yD6ob179jYjfNqpEldc
+SfUNhdOnN1njDtVIkIb5r6BkM02NSF7l2F5U72vnctbuFls/oB/aDn2W1nY
k7x2uPSpJini6Aocxhu14xMdMHhXeIQXZYKNY8POyuu6QOqc8evJkytRaLdL
ciP5HSjt6HifnrgKfzDvmJ6r7waao0Qp9xgT91Z/3MT+3gNnFivcWk+bYv2X
kmXWRb0Q4e1fr0hejZt6OUXHnfqgL8kqAK6sQTP9OUtVx/tAO/N6x9m8tSgq
rh7hX38PdzRMjzVmrUMnUTc7gd0PdVFLnVaWmOFhsWbMX739kGOYq2+/i4Uq
rCq79oS/oSZ2isZ7yULVn96ch3oDYLSV/mOZpzkeNpjn0yMdgIoXzNT2NnPc
eIE1WsYdhLSGnyxDHwtMdPfnSxlDkCkYOeTbZYFMrlq46N4QxC40mG/sZYkO
0hKZsesw/Mac1Rzda4kPY/ZrzJochtmTSrp1B6zwdmziu4yMEShi/R6fM2SF
E63inACHUWBy726fDrPGe8f6xNpDo9DpUi3ePWaNbeHJLhGiMWjNP74WBGwM
qLJsm2/2Ab6We/xiPMHGg+6efd7PP8BMVdSDlMPrUUaOOooO/QNbWc5OsZ/X
Y6ag8Mr4Ajk0+piF8AUEn087h6qL5aDlz3uULSRoK7u5r6VCDgd4eYyXRwkW
pU24XqiUw5eoBWKrWIJJejlMrRo5LD+jmJoWEbS0+Tyo+0QOieLatItXCV6N
zvdjdsvBlu5+/0E1wYNjM3u2qFOQMu+s8vAjgi3i3c7qDApeadbvWvKYIDle
Yt0ynwKevtW3+HqCmmqe2u4LKbhmrrNhy1OCUpPSV56GFEzu633d0UVwFXf/
tmA2Beina8LoIXiFKbZj2lCQGsSJgT6CSuP01WN2FBhHSvULBgh2JJSrhTtS
4JFSHBgmJ3g+W73xyDYKbqb2Vd76SPBbgK+E7KBg+OIS9dYJgkFrJIVTHhQk
ZqWVshUE8ZGfKN6TgpZcGS3kG8F7JysF6E3B4js/OVnfCeq6MvyVfSjglqwv
fDZNUKTpz5EepKD0foRiZobg+NsqxxQuBf8CFJ84ig==
        "]]},
      Annotation[#, "Charting`Private`Tag$230105#1"]& ]}, {}}, InsetBox[
    StyleBox["\<\"\\!\\(\\*OverscriptBox[\\\"c\\\", \
\\\"_\\\"]\\)(\[ScriptM])=(\[ScriptM]-1+\[ScriptH])\\!\\(\\*StyleBox[\\\"\
\[Kappa]\\\",\\nFontVariations->{\\\"Underline\\\"->True}]\\)\"\>",
     StripOnInput->False,
     CharacterEncoding -> 
     "WindowsANSI"], {2.25, 3.7355831680775955}, {-1, 0}], 
   InsetBox["\<\"\[UpperLeftArrow]\"\>", {1.5, 3.7355831680775955}, {-1, -1}],
    InsetBox[
    StyleBox["\<\"\[DownArrow]\"\>",
     StripOnInput->False,
     FontSize->4.4664581357449515`,
     CharacterEncoding -> "WindowsANSI"], {-1, 1}], InsetBox[
    StyleBox["\<\" \
\\!\\(\\*\\nStyleBox[\\\"\[LongLeftArrow]\\\",\\nFontSize->14]\\) \
c(\[ScriptM])\"\>",
     StripOnInput->False,
     CharacterEncoding -> "WindowsANSI"], {2.5, 1.1933910805975072}, {-1, 0}],
    InsetBox[
    StyleBox["\<\"\[LongLeftArrow] Upper Bound = \
Min[\\!\\(\\*OverscriptBox[OverscriptBox[\\\"c\\\", \\\"_\\\"], \
\\\"_\\\"]\\)(\[ScriptM]),\\!\\(\\*OverscriptBox[\\\"c\\\", \\\"_\\\"]\\)(\
\[ScriptM])]\"\>",
     StripOnInput->False,
     CharacterEncoding -> "WindowsANSI"], {8.75, 4.296391416215271}, {-1, 0}],
    InsetBox[
    StyleBox["\<\" \[LongLeftArrow] \
\\!\\(\\*OverscriptBox[OverscriptBox[\\\"c\\\", \\\"_\\\"], \\\"_\\\"]\\)(\
\[ScriptM])=\\!\\(\\*OverscriptBox[\\\"\[Kappa]\\\", \\\"_\\\"]\\)\[ScriptM] \
= (1-\\!\\(\\*SuperscriptBox[\\\"\[WeierstrassP]\\\", \\nRowBox[{\\\"1\\\", \
\\\"/\\\", \\\"\[Rho]\\\"}]]\\)\\!\\(\\*SubscriptBox[\\\"\[CapitalThorn]\\\", \
\\\"R\\\"]\\))\[ScriptM]\"\>",
     StripOnInput->False,
     CharacterEncoding -> "WindowsANSI"], {5.75, 5.359364423220114}, {-1, 0}],
    InsetBox[
    StyleBox["\<\"\\!\\(\\*UnderscriptBox[\\\"c\\\", \
\\\"_\\\"]\\)(\[ScriptM])=(1-\\!\\(\\*SubscriptBox[\\\"\[CapitalThorn]\\\", \
\\\"R\\\"]\\))\[ScriptM]=\\!\\(\\*\\nStyleBox[\\\"\[Kappa]\\\",\\\
nFontVariations->{\\\"Underline\\\"->True}]\\)\\!\\(\\*SubscriptBox[\\\"m\\\",\
 \\nStyleBox[\\\"\[LowerRightArrow]\\\",\\nFontSize->14]]\\)\"\>",
     StripOnInput->False,
     CharacterEncoding -> "WindowsANSI"], {20., 0.7846215433895454}, {1, -1}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"\[ScriptC]\"", TraditionalForm]},
  AxesOrigin->{Automatic, Automatic},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 25}, {0, 5.624167223016226}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->None]], "Print",
 CellChangeTimes->{3.698234144135056*^9, 3.698257194997134*^9, 
  3.739779446555623*^9, 3.7397803885211487`*^9, 3.742208005854062*^9, 
  3.779207621158955*^9, 3.779208000643084*^9},
 CellLabel->
  "During evaluation of \
In[34]:=",ExpressionUUID->"873ab6e5-0ee3-45c7-9b1b-524fb6e143d5"],

Cell[BoxData["\<\"Exporting:../../../../Figures/cFuncBounds\"\>"], "Print",
 CellChangeTimes->{3.698234144135056*^9, 3.698257194997134*^9, 
  3.739779446555623*^9, 3.7397803885211487`*^9, 3.742208005854062*^9, 
  3.779207621158955*^9, 3.779208000782522*^9},
 CellLabel->
  "During evaluation of \
In[34]:=",ExpressionUUID->"d0a9b2ae-d9f6-4f52-8b0b-66c61d53de33"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"<<", "cGroTargetFigPlot.m"}], ";"}]], "Code",
 CellLabel->"In[35]:=",ExpressionUUID->"4ae70998-8649-42e4-ab59-566ff6aac041"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running cGroTargetFigPlot.m\"\>"], "Print",
 CellChangeTimes->{3.698234150257906*^9, 3.698257196224143*^9, 
  3.739779448193096*^9, 3.7397803919205627`*^9, 3.742208007617833*^9, 
  3.779207623096264*^9, 3.7792080025894127`*^9},
 CellLabel->
  "During evaluation of \
In[35]:=",ExpressionUUID->"f312aada-697b-4ee3-bf70-eca389b9311e"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
       LineBox[CompressedData["
1:eJwVzX0w1HkAx/HNdWnohLq6odTmYRRnT21PKz7Gw1E6CiGyQ7IuV1wIHZ2H
Vpm4yaCH3eLEVZy6NVZs9rgZK44rolHjKkNytV2Z765l7S7fvd/98Zn3vP76
sI+mhiaasFgsH2b/9+mZlMscsQobiv49KLNTYZo2vc3oVGH1+6SbSatUCH6m
7/H8TA1R95QUiwQ7QmyfXolWY8uLN8dalQSciVarjlo1rNJUJHCUoMpx/JSO
qPGD8p9qXh/BunPCpZ/wZpAX9+Buu5zAvtCouFEwg5gWa6cOCUHNtuW39g/O
QGjZHW6oI3CjJbK+tRq46Io41mIC95yqj0cEGihlb05HlxH8LioKyZdqUP2w
K6vjAkHU0LvJ7w0ahKUPtaflExyXj4qy9s6ifW9Mgc8ZgtJO/8Kg8llYXR/3
dE4ncMhA6faJWTjk8A7ZnyTw+2ulQuI2h5EU9aAiieC0R4yrNnMORq40wi2B
wJbPbQt/OAeF8+qKm3yCYVFxRp6FFni0yrcjmsAqS8rnRWhRZs2b3h1J0LPs
RLL5L1qwB7qpLIz5l/xc3/BBi1EXz6nWAwS9ZvHL+R7zkGiC3Vu/Ibhoqqus
LZ5Hgfl9M1YQAX/9ivCWJ/NYkaxsbggkuDN1l/vSToesJa+uHfyawKT3z4Ch
JB0UhhEE+RFM7ZVfiJDo0O9eMZvmQ+CZ56FULeiwiRO+7qo3we3HO85G++vR
eDWhT+9FIBz4Y+tohR65TppLMZ4E6e8UNo6v9Ggx1kTNeBC8r6vmLHE04LpX
qrGBR/DcylQwk2YAu5GVELubYOTa+4FmuQHCqJLDe3YRBA7HHC42W0Dk5s13
vthJ4HuvznI6cgGZkbYJFjsIQm4K9BtrFmA6KhE7bScYCmj7NHl6AfLjDkv3
cAmOmZ7zzd+5CNLW+lPqNoK8bx1/c8pbhFzGH5RuJViZe4g3+WgR5Tc6Smbd
CZrqWboTn1NYCwSKEMbj52vHmtZQxEnbtPsZWyb6dWvWUgQXv3DdxziVXXwp
14ZiV49I5MfYTbzSqXQDxbtCZe5uxo0ldmGNmykyQ6uS7RnfTtlzT+lJ4Xq1
Ylz7FcGz/WPlX4LCTi1zm2W8zCU/+5Q3Re1Q/Vk148S3Cl+dD8UDh7frPzJ2
iAv6e3kghXrf86TXjGsPRps6h1L4e4ewHzMe5ix8+C6M4rLMmNPP2MSielgS
TuH+JPN5L+P4/omqnZEUWybayroYb/Q9zg04QtH56scVMsYH2OY2JbEU+vOx
J+8zzjPeNQ7wKaZfsgabGY/JSX9EPMVkaWXlPcYW4vIm8VEK4Qnh/K+MvbK5
V8YSKNawdsXWM06JeJazKZGi30zSdYtxFTc7XiCgeB2idK5j/B+9myNI
        "]]},
      Annotation[#, "Charting`Private`Tag$230504#1"]& ], 
     TagBox[
      {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQfdLwHQsDwwf7ZZ2hswt/vrf/oh7xU1cFwZeXO/Q2
2gPBf7VH+cfZaQj+sRIGU94HCL7Wuc3z7qh/hPOZb33RPFSK4L/7t+F5yT4E
3+/ar2O2vJ/gfDN/6cvTohB8/YfbBPcuQvDnqj4o/PkBwZdpbmFhtvoM5ys3
/T88pxHBX2DMsdTnPIKv9697x0nxL3C+YfXctzFpCP6ema3+DZsR/IiLLx4X
/EbwM3ffnFnu+RXO79nn2uQ9CcFXKbHvMX2I4Luc5j+8Xu8bnF9qHa3zvQzB
l44z2R5yFMG/NLOjpJ7vO5wvWL45zioMwT/GlpPFvQTB71k/f8XKNwj+ca5E
jjjrH3B+F/vPKYs6EPw4WZ6QLRcQ/OVP15jckfsJ5zMdP+F+MR3Bf+q5uz1s
PYJvW2/98uMfBH/ZWbPaKNdfcH7Luf1GNycj+MUvDkup3kXwXy2ep8+o+hvO
vy7Inva5CMG/OuPVuU27EXyPS9GRHVx/4HzntYsF3oUj+P4L034pLEDwL7pv
Z816h+CnsDc7N5j/hfPrM1TXqdUj+Pw1oVaPzyD4G1Yw/MwR/YfwX57N2pe2
CP5ck4rEtDQEHwAnLdEE
        "]]},
      Annotation[#, "Charting`Private`Tag$230504#2"]& ], 
     TagBox[
      {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQfdLwHQsDwwf7apF17g+rPth/UY/4qauC4MvLHXob
7YHgv9qj/OPsNAT/WAmDKe8DBF/r3OZ5d9Q/wvnMt75oHipF8N/92/C8ZB+C
73ft1zFb3k9wvpm/9OVpUQi+/sNtgnsXIfhzVR8U/vyA4Ms0t7AwW32G85Wb
/h+e04jgLzDmWOpzHsHX+9e946T4FzjfsHru25g0BH/PzFb/hs0IfsTFF48L
fiP4mbtvziz3/Arn9+xzbfKehOCrlNj3mD5E8F1O8x9er/cNzi+1jtb5Xobg
S8eZbA85iuBfmtlRUs/3Hc4XLN8cZxWG4B9jy8niXoLg96yfv2LlGwT/OFci
R5z1Dzi/i/3nlEUdCH6cLE/IlgsI/vKna0zuyP2E85mOn3C/mI7gP/Xc3R62
HsG3rbd++fEPgr/srFltlOsvOL/l3H6jm5MR/OIXh6VU7yL4rxbP02dU/Q3n
XxdkT/tchOBfnfHq3KbdCL7HpejIDq4/cL7z2sUC78IRfP+Fab8UFiD4F923
s2a9Q/BT2JudG8z/wvn1Garr1OoRfP6aUKvHZxD8DSsYfuaI/kP4L89m7Utb
BH+uSUViWhqCDwCm9a6w
        "]]},
      Annotation[#, "Charting`Private`Tag$230504#3"]& ]}, {}}, 
   {GrayLevel[0], Dashing[{0.01}], 
    LineBox[{{1.3947786063763847`, 0.8523762378645465}, {1.3947786063763847`, 
     1.1108542241165107`}}]}, InsetBox[
    StyleBox["\<\"\[CapitalThorn]\[Congruent]\\!\\(\\((R\[Beta])\\)\\^\\(1/\
\[Rho]\\)\\)\"\>",
     StripOnInput->False,
     CharacterEncoding -> "WindowsANSI"], {1.9, 0.9991996797437437}, {-1, 0}],
    InsetBox[
    StyleBox["\<\"\[CapitalGamma]\"\>",
     StripOnInput->False,
     CharacterEncoding -> "WindowsANSI"], {1.9, 1.03}, {-1, 0}], InsetBox[
    StyleBox["\<\" \\!\\(\[DoubleStruckCapitalE]\\_t[\\(c\\)\\_\\(t + \
1\\)/c\\_t]\\)\"\>",
     StripOnInput->False,
     FontWeight->Bold,
     CharacterEncoding -> 
     "WindowsANSI"], {1.9, 1.0118743511729305}, {-1, 0}], {
    {Arrowheads[0.03], 
     ArrowBox[{{1.3622786063763848`, 1.0270523670827596`}, {
      1.3647786063763847`, 1.0268428006719565`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.3122786063763847`, 1.0313061668397474`}, {
      1.3147786063763847`, 1.0310341288880158`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.2622786063763847`, 1.0368316201855021`}, {
      1.2647786063763846`, 1.0364748879226469`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.2122786063763846`, 1.0440809460781726`}, {
      1.2147786063763846`, 1.043609533179754}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.1622786063763848`, 1.0536634229115727`}, {
      1.1647786063763848`, 1.0530377911481272`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.1122786063763848`, 1.0663793881071089`}, {
      1.1147786063763847`, 1.0655504264170372`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.0622786063763847`, 1.0832179675024705`}, {
      1.0647786063763847`, 1.0821296602184678`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.0122786063763847`, 1.105300730108961}, {1.0147786063763846`,
       1.103895805898521}}]}}, {
    {Arrowheads[0.03], 
     ArrowBox[{{1.4297786063763849`, 1.0227942990657557`}, {
      1.4247786063763848`, 1.023014791970523}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.509778606376385, 1.0191804846871524`}, {1.5047786063763848`,
       1.0193354532990804`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.5897786063763846`, 1.0166445849517163`}, {
      1.5847786063763847`, 1.0167558607996225`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.6697786063763846`, 1.0148260940751237`}, {
      1.6647786063763848`, 1.0149071978484019`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.7497786063763847`, 1.013501658041704}, {1.7447786063763848`,
       1.0135614137483053`}}]}, 
    {Arrowheads[0.03], 
     ArrowBox[{{1.8297786063763848`, 1.0125266966046893`}, {1.824778606376385,
       1.0125710305612101`}}]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\\!\\(m\\_t\\)\"", TraditionalForm], 
    FormBox["\"Growth\"", TraditionalForm]},
  AxesOrigin->{1., 0.9891996797437437},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{1., 2.1}, {0.9891996797437437, 1.07}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{{{1.3947786063763847`, 
      FormBox[
       InterpretationBox[
        Cell[
         BoxData[
          FormBox[
           StyleBox[
           "\"\\!\\(\\*OverscriptBox[\\\"m\\\", \\\"\[Vee]\\\"]\\)\"", Italic,
             CharacterEncoding -> "WindowsANSI", StripOnInput -> False], 
           TextForm]], "InlineText"], 
        Text[
         Style[
         "\!\(\*OverscriptBox[\"m\", \"\[Vee]\"]\)", Italic, 
          CharacterEncoding -> "WindowsANSI"]]], TraditionalForm]}, {
     1.3947786063763847`, 
      FormBox[
       InterpretationBox[
        Cell[
         BoxData[
          FormBox[
           StyleBox[
           "\"\"", Italic, CharacterEncoding -> "WindowsANSI", StripOnInput -> 
            False], TextForm]], "InlineText"], 
        Text[
         Style["", Italic, CharacterEncoding -> "WindowsANSI"]]], 
       TraditionalForm]}}, None}]], "Print",
 CellChangeTimes->{3.698234150257906*^9, 3.698257196224143*^9, 
  3.739779448193096*^9, 3.7397803919205627`*^9, 3.742208007617833*^9, 
  3.779207623096264*^9, 3.779208003273746*^9},
 CellLabel->
  "During evaluation of \
In[35]:=",ExpressionUUID->"f03b6454-3ff9-4405-9889-6130c37553a8"],

Cell[BoxData["\<\"Exporting:../../../../Figures/cGroTargetFig\"\>"], "Print",
 CellChangeTimes->{3.698234150257906*^9, 3.698257196224143*^9, 
  3.739779448193096*^9, 3.7397803919205627`*^9, 3.742208007617833*^9, 
  3.779207623096264*^9, 3.779208003363948*^9},
 CellLabel->
  "During evaluation of \
In[35]:=",ExpressionUUID->"eecae740-0dac-4891-b556-85d30050040a"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"<<", "MPCLimitsPlot.m"}], ";"}]], "Code",
 CellLabel->"In[36]:=",ExpressionUUID->"0ee29405-fe87-4931-a886-dab77e7b51f8"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running MPCLimitsPlot.m\"\>"], "Print",
 CellChangeTimes->{3.698234154657805*^9, 3.698257198579723*^9, 
  3.739779451042739*^9, 3.739780396821425*^9, 3.742208010217526*^9, 
  3.779207626474352*^9},
 CellLabel->
  "During evaluation of \
In[36]:=",ExpressionUUID->"ab06dd24-be17-4de1-9d3c-2c5415ed1b55"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.004], Opacity[1.], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7ZX64uKBl612Cpx3miTEltgvEPVv65LcYg/jN3Js
Vu+UPALnR0QuXP/h4xU4n/t/Y4y73H04XzXw3YvD3U/g/PJzlvYzvryE88W3
CN5jZHwP52975HzmvM0nOP9Q1lzpyDdf4Pyvarb8a3O/w/lMP1cLSKv+gvPN
/idsC173B84/02Jy7pjWfzhffsLrnyvfMTjA+K+/37931YAJzl/yavcpvj5m
OJ9Pdvn7J09Y4PyezK1pC1TY4PxvDqufZNSzw/klRke2iB3mgPPvrzvSfVGR
C87/nXVltmYVN5yv7cj+L203D5zvvkgxfaM4H5xfLhuv9DCGH87XeRPKfd1X
AM4X5v/AceQXgs+yf/Z65TmCcH62ye6bnN5CcP5qz6QF+74h+F9fSwk8myYM
528Ndmee4iIC59d7tM7f8gzBV7zrdWNxqyicb2XeMkXSSAzOj5E7/5PxMoL/
9VTvo4JGcTh/BktcSZCKBML997YuYjqC4LPWNoZYFkrC+Qwr49Y/EpKC84tm
re8VOoTg79Xu4BDMk4bzBb2KdJr4ZOD8O7oXLlfuQfA3zLNXeRInC+fHrjcT
lP2H4De0Lmy8s0oOzl/7QnY2n488nK/UIuLBvgzBny7P/fX/fwQfAAOaPsE=

        "]]},
      Annotation[#, "Charting`Private`Tag$232718#1"]& ], 
     TagBox[
      {GrayLevel[0], Thickness[0.004], Opacity[1.], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQ7ZX64uKBl6123KaHJ5ddfmu/QNS/rUtyiz2M38ix
Wb1T8gicHxG5cP2Hj1fgfO7/jTHucvfhfNXAdy8Odz+B88vPWdrP+PISzhff
IniPkfE9nL/tkfOZ8zaf4PxDWXOlI998gfO/qtnyr839Ducz/VwtIK36C843
+5+wLXjdHzj/TIvJuWNa/+F8+Qmvf658x+AA47/+fv/eVQMmOH/Jq92n+PqY
4Xw+2eXvnzxhgfN7MremLVBhg/O/Oax+klHPDueXGB3ZInaYA86/v+5I90VF
Ljj/d9aV2ZpV3HC+tiP7v7TdPHC++yLF9I3ifHB+uWy80sMYfjhf500o93Vf
AThfmP8Dx5FfCD7L/tnrlecIwvnZJrtvcnoLwfmrPZMW7PuG4H99LSXwbJow
nL812J15iosInF/v0Tp/yzMEX/Gu143FraJwvpV5yxRJIzE4P0bu/E/Gywj+
11O9jwoaxeH8GSxxJUEqEgj339u6iOkIgs9a2xhiWSgJ5zOsjFv/SEgKzi+a
tb5X6BCCv1e7g0MwTxrOF/Qq0mnik4Hz7+heuFy5B8HfMM9e5UmcLJwfu95M
UPYfgt/QurDxzio5OH/tC9nZfD7ycL5Si4gH+zIEf7o899f//xF8ABHBih0=

        "]]},
      Annotation[#, "Charting`Private`Tag$232718#2"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.001], Opacity[1.], LineBox[CompressedData["
1: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
jczYs3WvWPT/ACtxAr0=
        "]]},
      Annotation[#, "Charting`Private`Tag$232767#1"]& ]}, {}}, InsetBox[
    StyleBox["\<\"\[UpperLeftArrow] (1-\\!\\(\\*SuperscriptBox[\\\"\
\[WeierstrassP]\\\", \\nRowBox[{\\\"1\\\", \\\"/\\\", \\\"\[Rho]\\\"}]]\\)\\!\
\\(\\*SubscriptBox[\\\"\[CapitalThorn]\\\", \\\"R\\\"]\\)) \[Congruent] \
\\!\\(\\*OverscriptBox[\\\"\[Kappa]\\\", \\\"_\\\"]\\)\"\>",
     StripOnInput->False,
     CharacterEncoding -> "WindowsANSI"], {6, 0.87}], InsetBox[
    StyleBox["\<\"  \
\\!\\(\\*\\nStyleBox[\\\"\[Kappa]\\\",\\nFontVariations->{\\\"Underline\\\"->\
True}]\\) \[Congruent] (1-\\!\\(\\*SubscriptBox[\\\"\[CapitalThorn]\\\", \
\\\"R\\\"]\\)) \[LowerRightArrow]\"\>",
     StripOnInput->False,
     CharacterEncoding -> 
     "WindowsANSI"], {0, 0.044231077169477266}, {-1, -1}], 
   InsetBox["\<\" \[LongLeftArrow] \[Kappa](\[ScriptM]) \[Congruent] c'(\
\[ScriptM])\"\>", {1, 0.5776174502816523}, {-1, -1}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{All, {0., 1.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698234154657805*^9, 3.698257198579723*^9, 
  3.739779451042739*^9, 3.739780396821425*^9, 3.742208010217526*^9, 
  3.779207626615052*^9},
 CellLabel->
  "During evaluation of \
In[36]:=",ExpressionUUID->"71b53eb4-2b5e-49d5-a6e3-550b2bc88a9c"],

Cell[BoxData["\<\"Exporting:../../../../Figures/MPCLimits\"\>"], "Print",
 CellChangeTimes->{3.698234154657805*^9, 3.698257198579723*^9, 
  3.739779451042739*^9, 3.739780396821425*^9, 3.742208010217526*^9, 
  3.7792076266684837`*^9},
 CellLabel->
  "During evaluation of \
In[36]:=",ExpressionUUID->"d343ebde-a5e3-48a0-9a5c-559197b1466e"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"<<", "cRatTargetFigPlot.m"}], ";"}]], "Code",
 CellLabel->"In[36]:=",ExpressionUUID->"8d856e8e-1a4d-4969-98a7-b3e8d130c219"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running cRatTargetFigPlot.m\"\>"], "Print",
 CellChangeTimes->{3.6982341582699413`*^9, 3.698257199600284*^9, 
  3.739779452283721*^9, 3.739780399570406*^9, 3.7422080115691757`*^9, 
  3.779207628058032*^9, 3.779208009970413*^9},
 CellLabel->
  "During evaluation of \
In[36]:=",ExpressionUUID->"4d0c2d0b-3123-40c6-ab08-df299e8037b2"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJwV0ns01GkYB/AxLm87S22tVZvGVsO4dLG6bdp43lFULpHFhMwad3ZCl1Vy
SexY1YxctnXLYE8Tym6lEimJMJ2k7UTWFpZN61L7e3MJM8bsb/94zvd8/nue
73lWBcV4hjIZDIYbPf/njEt0sUdMrP22/DPqV0EUpIeYWzzl7gUrWRODGUzB
k39fR0m5Alh+UaltTpvc2CERcaNBdTWKdYh2qtHEigPcZKhvc16qG0LB4zbn
oW+4mbB9mmWzLpSCmNK4R+5cGdj7nA1JCqfggURS78b9DRwMJY/ZIgp09Q6j
kaj7ILz8rMcsjoI9J4XiWz5tsKq4sy7tJAW340N75c86QJMiyqrOoKDH7zvr
w8eew1Ty7vKKHAoW75KGPcDdcLZn4NxkEQWfdIZWf+X/ErbtvV+LLlHAWSmq
FAf1g95Nmz/GrlKwtffgY17OAByJEz4yq6P3Uaa4dhb9DTOeXUpuMwUR9xWK
htQhYEv05pPaKSgILl/+WeA/EFjTPi3vomDd/oEP86EjcFf5wuZ8PwV9E+4d
eM8Y3C6S2f05TMF4/+dfGnm/g3afy6ffjFOQdeVEOJ9PgZrp0t48RwF30QK3
40UEhsVesSomgZrYlCuZJe8hIE9eOIMIdJrlon0547Ca3/VrqT4B07TnFgEF
EzDJMRdWLSZg69G/qaRoErwim8+VGhHojRXbSyVToBtgXw7GBKptfQ1asj9A
U8BLgcNKAkY+bT0V4mno0OdrKFMCMMjIbjo6A1Gb2MbplgQKjCIMuMdnYUmk
bvfJ9QRSZZE/bo5SAsu1PcF0I4HijvzWzFgVLNx+q3HtVgJJ0bmEfXgOfrk4
nMK2IzAmtFjmG6QGcb3Sso5H4Kx6VKcvbB6O9q8/UutE4M7bXdRCPw3cvM6T
B7kQeGG2dXCbKQOnzsk8p9wJRFgGW+fKGTjAy6R0zIvAAx//BJ6JFs7wS3wh
8SWwcf9opWGZFm44OFeVLSAgSnPqtjNmYidrfxEvmEBG2AKlVi4T+0fqlPeE
E7jHFmpGDbVx8rWnp7pEBOrm07WtMrUxkcc7Jh4i0HFjx6h0sQ6OrnCsTI8j
0LIyrFWSo4MTOQcy4hMI/HDbu2yApYt7XPd5LE0hcGD1K4G/VBfvSIuoXSYm
oKqxNl6D9PBcuOCjltMEErVH2s8n62HHFlmXbybdt6mt0IyBcKG1loNnLoFj
0T6TrHiEYbdD3lQegRVbQhTcBISlfOLKyifQqD50wSEJ4VdhMuYXtFlS6c4T
pxCOFysP7qYtu/Lwp5HTCN9oqt5ZRLt1eMNmRSHCFnaccVxAwDB4UZz4LsJL
Nui4SQrpe63YzmUNCAfyqplltAXjVib3GhG+6hFYe4t2xSmn1smHCLvG3OX0
0/66NMko5AnC6VVHlTb0Xwb1jtU49CGs4g6Vd9NG8tkzgr8Qdt6SG/CWdpUI
fXtiEOF8R96nWhcIfFCtRtVvEN4cUpxsRfvMcj/+Kgrh2DJv7yTa1oPha+ze
I9xwTfvjHNqdld9r9k8gbNB4vfESbRPb7PKsaYQv9xms/Z12M6MkoWoW4dl3
9QOvaUcoqtwVKoR3qSPzZmnrZ93hvFYj/LP+MreFxQSu8xXTGg3CQ8atTA7t
/wCQh1hv
        "]]},
      Annotation[#, "Charting`Private`Tag$230752#1"]& ], 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJwVzXk81Hkcx/GfxFfZmkTT5qrQZKmHHtoSyecr+1DJdD5CrhpybI0xa5Mi
VqTDzszDsbs5ytE2lUY9WpYulBwz1rEP0bZkMEphHDPzzbjZ2T/ej9fj+dd7
fVDkkZBFFEUxNfu/k/s5tw5Fcl0oKlEedYPjcuXURuu/GQeA2jvt2knzhObR
j6f5jECguEaGt2j+oCh147EZHMCXC+MSaGxIohNTf0YC4OUDdpG0i9Ao9ug/
yhDAyaP6qWE0HkQWnGs4yMiDgXHTJ8G0m1DN471gMh6BjVjYzKIVg45uFBo8
/RJe3c7qjN9VCft+YqWUeYnhreJOR8HTOnhyIUQqbG2B1AMZHvJ7TdDhe8Yu
KqYNVjU90mlb+QYM9vBDq/E7ELU6Rwp5b2FFe0iJg997UG1OEPh4dIDlOnZR
SlAPRAuzXj8e6YId0ohG1wwZUA6erKeWvVA9nejZnvsBmP4Le61HZBD+UiKp
SuqHSo7h9UnBB8gOvme86uRnoOu+FOuZ9cNmH5l6PmQQKpxWFlAVn6CbHGzB
++Twm9PsgwybAVD1rNlCPzYCZOubTG7uIKSJYsO8vcdg7yNnf4cPQ8Cg6THP
5yqAuEa/CyByKOcmigT5StC9HVPjox6G9g2Z6HCGClYww7T3N4yAVXKbdUA2
geo9ZsE16aPgeKjn2/zcL+C5Ji38JxgDKTfFhc8bh1Bp7dolrWNQ4nh8WV26
Gt7MLC/cuEUBdC9xx/2UCYg1sIe4CAVAH5X++uwknDO+KtonVEA2PXwZ4/wU
jKcfl4mlCkjK+/7qttPTcOnufJA7TQm3WrLqBdwZMO1Uiz+7KiGek6kwi5qF
/D8re9VcJchZ1l8fD5qDGkmRR0OOEn6eG1rcHToPd2+0XbeoV8Lz4T1jy30X
wHYU1Q0MK+GfDTv6nKwo7KYsvBNvoILwb4LtMoUUnl6/vfeFgwqqvfziXM21
sHhiXcwmXxVs9RkqMirUwte6s03cE1TATnZ/t8tkEd645KxsJE8F10L1prUy
F+Gk58xa/SoVVJqxFoaMtHFG85kTsm4VPJu/om0j0Mas1pgzFbMqaCl1G+Ib
LMacco8opimBunWh9byMxVhqGzWU5kTg8pNjhbKlOli1dvahvRcBf4uuQD++
Di6zsG/l/0hgptzOxBbp4r9Wp9/mCAhc1B5s+jVBF1tWVS07cp8A3cqRtYFC
2N1Ja364hkAMx+vL0gsIJ/ewKDcpAdPtpySMOIQrxh+6lGr8au6Hm7vjEf68
KSDaspvAUj7/u9hLCPMfjDRq9xDIE9X+Mngd4Ua2oXltL4H6AfttkhyEHR4f
9XH7SMAomHYupQLhOavUrc5yAs9szDwKqxDOEQYmiTQOVNmYV75CWM+ys8F4
mMD9S+71X2oR1vdr2T2l8c6CePqpZoTPJvd3lY0SCJLKy3d3I9x1KKd0s4oA
Ek6lBvYivOXwW/5NjYvZ6ERsH8LsFf+e1CcE1DMWqOST5k/mrBzQONXY13v9
GMKGUPHi93ECdn1htruUCJsUR/ivVBNoL4pe8CEIixTq8USNzR3T76VNIJw9
n2UYOEGghsqPK55CeEdd2Y0mjcMlxQclMwh/Cigx2jlJ4Ku055Yf5xCOqEtL
LdL4D2/JxMICwu8njkytniLwHy03YfM=
        "]]},
      Annotation[#, "Charting`Private`Tag$230752#2"]& ]}, {}}, 
   InsetBox["\<\" \[UpperLeftArrow] \\!\\(\\*SubscriptBox[\\\"\
\[DoubleStruckCapitalE]\\\", \\\"t\\\"]\\)[\\!\\(\\*SubscriptBox[\\\"\
\[CapitalDelta]\[ScriptM]\\\", \\nRowBox[{\\\"t\\\", \\\"+\\\", \
\\\"1\\\"}]]\\)]=0\"\>", {2.25, 1.0239771676461946}, {-1, 1}], 
   InsetBox["\<\"  \[LongLeftArrow] \
c(\\!\\(\\*SubscriptBox[\\\"\[ScriptM]\\\", \\\"t\\\"]\\))\"\>", \
{2., 1.1265902719162568}, {-1, 0}], 
   {GrayLevel[0], Dashing[{0.01}], 
    LineBox[{{1.3947786063763847`, 0.}, {1.3947786063763847`, 
     1.2483138852004656`}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"\[ScriptC]\"", TraditionalForm]},
  AxesOrigin->{Automatic, Automatic},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{{{1.3947786063763847`, 
      FormBox[
       InterpretationBox[
        Cell[
         BoxData[
          FormBox[
           StyleBox[
           "\"\\!\\(\\*OverscriptBox[\\\"m\\\", \\\"\[Vee]\\\"]\\)\"", Italic,
             StripOnInput -> False], TextForm]], "InlineText"], 
        Text[
         Style["\!\(\*OverscriptBox[\"m\", \"\[Vee]\"]\)", Italic]]], 
       TraditionalForm]}, {1.3947786063763847`, 
      FormBox[
       InterpretationBox[
        Cell[
         BoxData[
          FormBox[
           StyleBox["\"\"", Italic, StripOnInput -> False], TextForm]], 
         "InlineText"], 
        Text[
         Style["", Italic]]], TraditionalForm]}}, None}]], "Print",
 CellChangeTimes->{3.6982341582699413`*^9, 3.698257199600284*^9, 
  3.739779452283721*^9, 3.739780399570406*^9, 3.7422080115691757`*^9, 
  3.779207628058032*^9, 3.779208010094784*^9},
 CellLabel->
  "During evaluation of \
In[36]:=",ExpressionUUID->"ef1a9c58-5d0b-482a-bfc8-50bf337d4fd7"],

Cell[BoxData["\<\"Exporting:../../../../Figures/cRatTargetFig\"\>"], "Print",
 CellChangeTimes->{3.6982341582699413`*^9, 3.698257199600284*^9, 
  3.739779452283721*^9, 3.739780399570406*^9, 3.7422080115691757`*^9, 
  3.779207628058032*^9, 3.779208010142066*^9},
 CellLabel->
  "During evaluation of \
In[36]:=",ExpressionUUID->"e9fea293-e6e0-4b30-aa1a-ed1c31ed5767"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"<<", "SimCDFsConverge.m"}], ";"}]], "Code",
 CellLabel->"In[37]:=",ExpressionUUID->"95872a86-67e5-42ba-bbad-e52d431bbfbd"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running SimCDFsConverge.m\"\>"], "Print",
 CellChangeTimes->{3.698234162052105*^9, 3.698257200728744*^9, 
  3.73977945361034*^9, 3.739780403832192*^9, 3.742208012967266*^9, 
  3.779207629757576*^9, 3.7792080162951813`*^9},
 CellLabel->
  "During evaluation of \
In[37]:=",ExpressionUUID->"ae89e77b-ff0a-44f3-97f7-bf26f05f0b0f"],

Cell[BoxData["\<\"Finished constructing shocks.\"\>"], "Print",
 CellChangeTimes->{3.698234162052105*^9, 3.698257200728744*^9, 
  3.73977945361034*^9, 3.739780403832192*^9, 3.742208012967266*^9, 
  3.779207629757576*^9, 3.77920808690547*^9},
 CellLabel->
  "During evaluation of \
In[37]:=",ExpressionUUID->"358ce1e4-351c-4fe2-a0ba-d2641566fb59"],

Cell[BoxData["\<\"Simulating.\"\>"], "Print",
 CellChangeTimes->{3.698234162052105*^9, 3.698257200728744*^9, 
  3.73977945361034*^9, 3.739780403832192*^9, 3.742208012967266*^9, 
  3.779207629757576*^9, 3.7792080998725033`*^9},
 CellLabel->
  "During evaluation of \
In[37]:=",ExpressionUUID->"0e72788d-f004-4079-9965-e63368dd2bc5"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"<<", "SimCDFsConvergePlot.m"}], ";"}]], "Code",
 CellLabel->"In[38]:=",ExpressionUUID->"16a9664c-30fa-4c59-b065-0f2564c33b67"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running SimCDFsConvergePlot.m\"\>"], "Print",
 CellChangeTimes->{3.698257848507408*^9, 3.739780231890876*^9, 
  3.779208701747892*^9},
 CellLabel->
  "During evaluation of \
In[38]:=",ExpressionUUID->"4961791f-b67c-4c08-a81d-133728c37e0b"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.003], Opacity[1.], FaceForm[Opacity[0.3]], 
       LineBox[CompressedData["
1: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
jmJLiDi15T8C/wOKoEIS
        "]]},
      Annotation[#, "Charting`Private`Tag$1228519#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.003], Opacity[1.], FaceForm[Opacity[0.3]], 
       LineBox[CompressedData["
1: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
p2c=
        "]]},
      Annotation[#, "Charting`Private`Tag$1228600#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.003], Opacity[1.], FaceForm[Opacity[0.3]], 
       LineBox[CompressedData["
1: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
        "]]},
      Annotation[#, "Charting`Private`Tag$1228762#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[0.003], Opacity[1.], FaceForm[Opacity[0.3]], 
       LineBox[CompressedData["
1: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
ub2xDYsTBEgq1kJjeWPYHSTS3TxN4H9NV9aH
        "]]},
      Annotation[#, "Charting`Private`Tag$1229518#1"]& ]}, {}}, 
   InsetBox["\<\"\\!\\(\\(\[ScriptCapitalF]\\_1\\%a\\)\\) \[LongRightArrow]\"\
\>", {0.35096136552707075, 0.9}, {1, 0}], 
   InsetBox["\<\"\\!\\(\\(\[ScriptCapitalF]\\_4\\%a\\)\\) \[LongRightArrow]\"\
\>", {0.4509640959661046, 0.82}, {1, 0}], 
   InsetBox["\<\" \[LongLeftArrow] \\!\\(\\(\[ScriptCapitalF]\\_10\\%a\\) \\)\
\"\>", {0.4962437427583654, 0.8}, {-1, 0}], 
   InsetBox["\<\" \[LongLeftArrow] \\!\\(\\(\[ScriptCapitalF]\\_40\\%a\\) \\) \
\[TildeTilde] \\!\\(\\(\[ScriptCapitalF]\\_\[Infinity]\\%a\\)\\) \"\>", {0.3725035340988756, 0.4},
     {-1, 0}]},
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptA]\"", TraditionalForm], 
    FormBox["\"\[ScriptCapitalF]\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{612., 378.2368011149356},
  Method->{
   "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "ScalingFunctions" -> 
    None},
  PlotRange->{{0., 1.2520175926788866`}, {0, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698257848507408*^9, 3.739780231890876*^9, 
  3.779208702398699*^9},
 CellLabel->
  "During evaluation of \
In[38]:=",ImageCache->GraphicsData["CompressedBitmap", "\<\
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
yq6aQvP+dRbaPeKeuCjjMKvTpmnvOiJ6J8s9IWM9M9AUnYStGRfg4rgMVhYc
k1ejMbfGIZuFVfL11ph9eqVfbiUCmfD0cMH09fWZwvCkczejI2aZcrgwYD8b
MKPTC5eUvi1bvjA5bAbsKH19BTM5t1LmaZmllWn79OCkc+kfEh5dmhl3IwwU
hs3MktHAc3Zg0Ouzt+dWzCWln96WyP5kmNDA4LibUJo4HbXWmFB/2wYEiM9b
f22gb9D59SLK6sK0GRzoc88Pjs6ESGlXAuGIFG6ShnVr0BZArywtmIWV4GLY
h3jgmX68p7t/KuQcS6Qxx3uaovTgv0gq3O9W91+rbGf6vC7DhnbYqbsYs9rk
W/tgEz+X3NXun6NPlm2UkHKPf1UL6FRstTnYfBB0NkVxs7p9zovb1SkqlVMo
siYVciAJMY4NWOw1ToNYBZ6v9vFdYXTAHMy3Giv4YTUiGtlTBBVj8gSVbc6e
VFcV066r011uun0zJveMtShkiy4rR4fHeGLYr32eX9uEieWDJu9s+wdWJ50y
zfdMr8ckWyhVOX7x3z3FfU/XxMSE+frXv27e9773mVe96lXm6quvNg9/+MPN
eeedZ+5+97ubU045xRx33HFm69atZtOmTeZOd7qTY6ITXWnnBHPMMceYLVu2
mOOPP96N+4AHPMA85jGPMS94wQvMTTfdZD7zmc84Of6P//gP89e//nV7QCtB
IXdSiXsnZnzujv7u/+KS/d7W8NvLajXOuvugD4uZ71vPxEcZKW4Qlh1TAhk/
uVPX8PbKyoqZnp42//zP/2w+/elPO3584QtfaHbu3Gl27NhhzjrrLHP66ac7
3t28ebPjbeqVdoxjE/betm2bOemkk8yZZ55pHvjAB0b2BtQnP/lJ853vfMf8
+7//uzl8+PAJ/58v2f/ishEro5Rx+HzyaW8+Hys2XeNLuTU2O2vEmy3ELM/Q
pe4da/7nf/7H3f/hD39ovvCFL5h9+/aZ3bt3m0c84hHmHve4BwrbfhMO3uSU
NgracnK8x3dVnT/G/d7sFP1TnvIU86UvfcksLy+XUtT/P63Y/+JS+p5fty3W
3x4wrU1Npqmp2bR3dJnByYW1HJw5tt4oNt5UAoPz3O8zsPZR++JZ4EFcdNFF
pq2tzbVR/Nu//Zv5wQ9+YN7whjc41QpDwrz8H6blbzTyve99b/d9q2JjpjaF
d3mJe4+7g+/d6CnnndQMEe7G4WUpcT8/rNvk5KR59atf7ezRDTfcgKgHKm8z
//RP/2Re85rXmNNOO83c+c53Ni960YvMc57zHKgWxHiTs2vf+MY33DfcyD/w
qPu13yCkOzJE21wCzQeHYVi4u971ruZRj3qU+cMf/uAfPQHFYRoaGsy5557r
zCYz+MUvfuEwRQmxpljcW2+91fztb39zY37fI/jyEtAuCNCmpqYc6zzoQQ+C
pTydj3cc9rWvfc1Bu9e97mVuu+028+c//9m8973vNSee6DxUd7+rq8vT4nvl
Qe0IoP7rv/7LqVHG/M///M+tAdSf/vQnc+ONNzp/4M1vfrNZXV11k62trY0T
e9KTnmRmZ2c9qO+WB3VhALW4uGguvfRSt2QWrF+K48y3v/1tc+qpp5onPOEJ
5ve//737jiWxeeITn+jkAW/ly1/+srvfVR6KUqlzc3POa3n6058eawLj4+Pm
wgsvNPe73/3M6OioumAOHjzoJgMUJO4vf/mLn8x3yoNRjZhV3r59Ow5RBPPf
//3fzqTArz/+8Y8F5uc//7njHVj8YQ97GJP0YL5dHoyyOTfffLNj/ZmZmQiG
tXjpS1/qwPzqV78SGLt6bpLwIdGMjUA8mM7KYBjyggsuYNhY4eEe0dF973tf
1kNgWMXLLrvMqTc+srzqwXSUB6O+CqQIYvf390cwS0tLjiOuvPJKGFxgYLbH
Pe5xbjYsm52dB/Ot8mCUY3ne855nHv3oR7u/lDFB+5588sn4xEG/bHGgL7nk
Ehfv3f/+9y8y8zcrw7Bs5Ba0s7MzpwSU/b/T5NZFiTDgZPDHoYbClj09jG8k
MByIh4VRXvayl7mI1Djp8Pfq6urMCSec4GyCRsYFR25gAzx86477kdvLYy8Y
Y2NjDlM0xXFhIdBPjAPl7P8Vn3z3u991WoAJXH/99ZUgXBru4Z499rGPXTML
Ym+k+eMf/3jswGFmrDG0/NjHPuYGaas8/PDwsOOkH/3oR67Dj3sf/vCHHZbW
pMThn/3sZ5szzjjDTdY+6wb5evnhHx7uPe1pT3NfTbFH+z7ykY80V111VRh+
i5P4888/39zznvd0dtuqNb8GX6sMo7u726H1m9/8Jk6BaSFYVt9FGFbEzbHH
Hmvudre7OXm0a5MmvUrCeES4hxF5/etf7/4SDFQ4fodV8ZFMkA4p4Oc973lP
1uFRoPjRVljj8AgVqP7jP/5jnAKkg6Uf+tCHuoW2hj1NU20Ig/FY1c9+9rM5
hZv19fVOmK1wRRg/+9nP3NiYkbPPPpvveRhfKQ/jkeEeDgg6LSWTFSdnFK27
Fkuob3zjG91SY2Qx9RmH/+lPf+oMptUZcQpf/OIX3aqipTUFpsrK4D0gctaT
9FNoKQ/jUeEersI73vGONVOA7HDnnj17Yt/T5z73OWe3rHk0F198MVrew/hy
ZRjkzCAtf2kezc3NR8wDTcJyAwO/xMp1Zhj4gxJswWAemHTLyXEe1oS453BS
MJCwghvpS+VhXBbuoeXC8kUYhJXMAzuj5WYdHvKQhzhrCpyMw3/qU59yihlX
Np0CqULLQXEKt99+uxO46upq54b8+te/9lP4YmUYBBQs49e//vUYUh06dMiN
h6+gKbz73e920ohSf8YznnHE8G70R4cB8K3JF6V0AfFzzjnHvOtd74qI43OS
K0VsWIOBgQGPeHN5xAUDOiPOEEeIf+hDH3JREP6XEP/IRz7iLBuaGNcg4/DQ
BXPyrW99Kw7/xz/+0Zkdy6pxCrgXTAHaMwUbB/gpfKE8jMeEe0996lPNy1/u
nxAMLCOxgR/dTyGfz7spPPOZz3Qsl3F42IeYAcnU8HibaJBCobBmClDNSrfT
Ft/73vf8FA5VhoGfje35/ve/H6NqULzuuuvWTAG7AC7Pfe5z5VFtNPxjk6GC
wMQptLa2Oo7FAVo/BSIM0LG+hp/C5yvDgGmkjAQDnc14lnli0RYHA6WKU3jF
FVdkHd4Ko6P4yMhIpBD5VDzsIoW2uPgJz+wf/uEf3PNDQ0N+Cp8rD+PycA+5
+sAHPrBmCviVjPOTn/wkTgEmRVfjD7/kJS/JOvzrXvc68V2cAi5Z8OLiFHAk
YSAMP3ooevRNlWEQgvIdK3cRhrXUzjpbNRGngDOF3KDG3/KWt2QdnsQf1P3K
V74Shyc0RYM0NTXFVh1cO8SYVcAa2CDFT+Gz5WEo77Fr167I94JBNAi1+UtT
IEp+5Stf6awEIp1xeNIDaJp0eBkvG5fGKWBI0VJoafg1unmfqQzDupCOaWyk
mTs53MPaoP3TlYacRKLWN3Nu5je/+c0jYTgQO8MomD6xqLCHTwhpUuK89a1v
dWt7zTXXRHW9AeIa/rWvfa1LI6TD/+53v3Ps+MMf/jAS57e//a1TEDZycISL
prKxMgyyQyge2FHEIbfwile8Ys0U8FbQczipSFzG4XHaoOW3v/3tODxOFixa
lIAtLs2BpGAV+MyGDn4Kny4P4/HhHqxI2jAlE2KAc4VVEwwcL1YGR5Coh0Ar
K4z9+/dH5aZ5EMQFVo9kwgkk7keKH/zgB2cdXhKKn6bhqcMiTbjqmgIZVFYa
Z0Z+oBvpU5VhWP/BiZA1NREGJgYNQkSlfgtyNC9+8Ysdo0qfbjD8E8I9Hodh
UwphVZ7//OcnFNqCsnJ+2Oc//3nHePPz834KByvDgLq48ikMkl9MgShLMJBk
fAtpF2sNM8Ow7prTFviJggEXsxT4kyITQkDAu3fvXqdNMg5P3ggGh+J3DvdQ
alA8JdO//uu/OjR6enqcvEcX7FYPo1T/yykl4D4x3Hvyk598xPKwBJgivE1N
S5HS4x//eKfnE5A+331C9haZ1XGaQPzejy3q148Xd68ImKA014sXjimqo6Oj
I/YOkctFhOkjwJKtrIQWl096FH0x43RzdC00K6HFkWJHk+nqYB9Wu98T1zWc
lp1LEZaqGwtEckMLigjJB06VNCJLYgP+x2gfiXrWlpvNxYbn6nyxE7M0ilS+
ETUMmlBM/WitPe4PPEJkh74vgV2lThy5xnRv+nJptekYXShVqXlSuAfUmpqa
NWtPXpB0hSVWXPtPfOITTm3b4MWZipgo/sRaFCt16khVxwKX/WkdnHN0dbwq
UX3729/uJJy/RDbyJwR26cpaDeYYlT1u+NcxoF+HWKXGndgFuDTqm6f8JppS
VTXRjmYDaIEpFYp4ASg9XCQNiYbB+SBFE7KnR2BXoSMj7iBQO6hv7SolGsKO
cBPR6O3tjdjhv8iD18qiwrFMWEE+Gxsb8wRsWIvi0RTZ+5r2m735LrMirKyc
u91ooQ+sFN7SRiTc0TTpwpMrtFH+moUn0g9OhjMB+/btK4F35tKq2yhlGbdr
1HcGLE32uc1VdECXYgKhS8RC6jNFF94lee9H9iuHiUGs6Q+QxQqYZi1lLgxL
ZNY06/ZNOzJvSFS8PhROiiW2Fp1o3ZrIDFbdO2mywbxjhp/+9KeeqPUe1Yql
yyUzPhi6Ue1HC6ulS5dCi/AOMPjMQgtHkUDg1ltvjWgRPKtWiQSRqkrRKmXz
rwz3GIuOo3TqhHtkH4sLtMVl3bC7OMEEOX/96189jFsqw3jWs54VffaUCfAW
cY0Ew8qik0kbibvP0LBZYRDqEMakMMjxK6UkGNAPDfTRj37U+R02fswMg/4A
WIJEiPwZXEtlJAWD8J3WK3wY/Cnm6Eb6eGUYuIfYQxv7RBjgSuI6hSGvnOoY
LuaXvvSlijCeHO6BGxmRlFYKRH/2s5+toRVwySUhoFaQM8NgfFWRNA+CDoKV
dB4ERxgyWYtoOT9WGQZGDdeX7OMpCVzi/RSGRJk5klK95ZZbMsOYnZ2N+TvB
kFsFrjI997nPfcwHP/hB56MoZbjB8FeFezT2URNJlwI3HAfSBlKxSQbjCJlw
uRENIgA30kcTGA6ERia+UXLklOQeDlRKHGU08AFRBjYuOXLkMtgjdFIUgtHY
2OiUEQoiZSSKbDASwmKD+MwwpBRIDAkGLbqqRotCFMuoBOHD4p5FRvpIZRhE
5FCVROyp4R7lg3e+851raEVbC3ApdeDuoYQrwXhKuEcIQYyY0uptb3ub6ytI
YUArKlUIPeNcccUVmWGQ5ELZpjCEM+UR0YoML0yqQmYsn+crw8DIgF8Kg1ID
Ma1d+wgjGXut0GWAQUUQocP2aj3gW5I8Ka0wfNRrCLmIea1iywwDKSPWIW4W
DEocBJ0U5DUP+jVINIqO1kn0MD5cHsZTwz0S7+TXUlrhkSuBLxhJOsUpkptv
vjkzDBQoSTH+OjWB+6Y3vWkNrXAIme9Xv/pVF9JYvssMAycSjZTCIBMZskhx
HmScSMvIP6JA7kb6UGUYGDI52ILxL//yL5EPBAP9Aq+xfmhPq3Qzw0C2mAfG
UjDEu1SpBYMiCzqHrhf0SuSrDWA8LdzDSaIqktKKPJP0rmCwRmh1GZOo0T9Y
GQbjAyeFQUUf/U1oJRjvf//7XSWcOfKZDVMzw6DMDa0YTzDQe3ISBIMmh1Bu
ceNYp+pIGA6ERqaFhW/YFXc7iriHzw+2KYVo7EFj0pyD1/3HP/7Rj3xzZexZ
afobyLEKBlpPkiIYUBK7SgISybcuW0UYCvkYixVMV+Gb3/ymczkJegUDV40V
ps0r5GUzw6DlQ26UYChvTQOTh7E1rjBd/jQaSptwfaAyGJQCXiRGW+TCQKgD
RVPBiyeBlOZms8IQ8/zyl7+MMIhklTQVDJEQ7z0kaSvCeHq4BwkwBim5pIxu
v/32SC6yTuDf0tLi2shDktYNdqAyGErbtLemYOA4fAIbTIXWtS2udobcMxWc
+ra2tlxWGFSA6LnkL5GLNInK/CIXsStyii0kgr722mszwyCehdQkWQWD5Btk
LMLY6mwWPhUdZQSLwb9zg72/MhgyZqzAj3/84whG8cYvfvGLSC4Vn3EZVEeq
BEO5ZgrKoQstwqDYQTdCSi5cUEwsF+6iNZOZYbCVJlQdIgwkAvcghaG5kSen
iG1VcGYYxBCKYwUDt4QlJh8qWuFOkvNJ1K+HUVcZBvkHXBlKv4KBctIaCQa5
dqrXXEEZZ4aBS80a2oAld3q4h7ug3JVo9ZOf/MTBJfcWlPGRMByIZ4RRoA4t
BCmFcP5UjRTTIpCkPAmvmLFUMNf7yk9AYJA1FT4ERn4a8iIi4XOTMEEekH9r
h3NZYRA/yYcSDEoL+IcQTjDYiABciEqTaQzEM8CwMY0bD4ukhSDmUMuZyMXY
6CiCas2Te1zvrQwGFcE60lEkMMTias7TVLAefB93VGWrSjCeGe4hzwqWRS61
MVCUFQwbaijL7FRizPFkgEH4xJKmMMBVBvfYQC7linFRk3qFG+w9lcGQBlEO
VOTCzstz1FSIQqniqe3HeqS5rDCk3UmPCAYqgzJ5CoN7ocDlcKDpUD35h61R
XD7sx3W/n10ZrlQJXqLg4kmrEiW4aq4k84Das9587kHhM7Pcb3btzJvFMHih
sSpuHKk6NBRhKil2eH7EtDTkTUv/hL2xaPpbGk1jS6+ZF94XlMf7WeEeykKp
UC096ThFiccF3EiJEZ2zN0HzvHt4fn5ixDocQ2Zq8XB4/gSHz4T1efF7xwqH
zM4de0z/hMVsttt+f6fpZ5Lz/WanHatz6vCdyw6FqM6aOmslG3r7zaHaXfbr
O0ztoV7T3VBlduUL6UyzFmE1e3SYirBaNVQqycyUW8johwSbK0bQXnim+4zS
w7I5tMvt1nM/exr7jWWe7SLEYr//yNrLXTt3uP/v3NNipvvrTK6qM2C0bBp3
5sy+/vmTs4xqfx+2gUeuyozYe2Mte9wjbROWbUca7eidKU28Q3L80RykkFN1
I92yXippLzoireonFB0pIUvPi47Ez6GW73TxRRddlJz6MWXylgh72ibCmiER
i2Z2asy07Nvlvld1aCQXSWAp1LbH3muZsv8fMrt25A3O7GKhzuys64+l2vwu
6Or+OnmDYT2K28xsf6PZZe/t2tdmpqYKpnbXDrNjV63pnz28Rqiujox+VIdD
FCm7atqhbOvohpSVFcQNEmWVIaCJWaqZfS6hwzY6/zb4KJ4cOmsad3tWOjS0
eFq8fdh01u5wkmMlcntgFbhrt5WytqFuU2UV0rzIWtsb8DtsWnY7fg2hwBFD
uevRKamO4kzRhXHT0ZqeU9rq62776017jzseqWRlSzSjKYeJDg4ORprhqZA1
s5FD1GmYZbVUUN6h/2hTnM68OVTlCVbbOXGGlm2+16msqpaxQPrjnMw5Md3Z
4FT38lCD/bvWUtw4pq6F5mPLWwKDTfQ2moa2kUDHedPfecg0NLSYkfnDIW+1
FkwpSmY9T3NpOB6cbOdUvu3jueF5qEBOxSRyTJu1AgDJMQGGAgooSP5DG32Q
SWmtnNWVO+x/TgxWbFdDIa5WkTUXTSOabvch5PfYAKjQsNN+qc7xXnzEymFt
eHTRFJsbhtyzVnXsq4Vsspm5HXVmKkDbUhqauy5bS9xsJ4tsc0ccHayOZwoa
HXZS3TRYUqSfHe4ROampVUSml0JtlxJpJQfZZZPkB7TlbKKzLtJ5174Gy0N5
q47y+bwdLm8DsMbuCXGTG25+bMTMeq/GjDTuNpzibs2Hh7bdMXyhMGYOR8ZY
NEO93aa7fwhab42PzQYjnDO7axvM0OyymR9qlE3fvDGwUuTOdnTkVkvtHnfv
QAcbnVdkl4ptIhu5mXJbiLwl/vQt4YKRAwlJ4ig4Y237PGHruosaLghlbl+n
Genc57lsi/MHduQcn1sGbXSMeVpgkan+FtPSOxEIumxGetvMoUNtZszK+uaj
H9aN8vB15KvQJqJmWh1tPDA3Zzqsqa8uY9LFpTSA4v/T0SXtB8UUhUoVkBJS
ozqcTSpG444EzwQ15k368Wa2d5/z4LrxBXtbLMPu89O33kxDYyNsbPLWu1uO
QotDvii+DLuFijJfW7cPe53K/Gx49Jg7CKT7feFasldqfYkHN7PZfL8/lhDv
q5wnJbKnaSORHQ2Lp1ok+9aoEMh3orGJwq2N09CFlgbTOebMcCyxznZ7nm4o
zEeUu52y3oeajEWTQsNu76VyDgsykC8UffHlMZPf7Sm/a0/e9I/NWoOWl/hv
ugNAOXrsSKldsWFHHWQclbk/uLd7g2pYR+fnhHuE1YTMJlEStD3RPkQlTHRW
yE5+Ga81pOjuGr84ZWOT4KLn28zI1KKZHznk/t6x55CNY/A0J8zYyIjr8JiY
l9GZN3X2mcYx/m89pz1W0uv6z/h/M2xK0gqdRTpYZGHQH6JXzpiJjngH6qwU
HYnbSbWxIVDKln4osjhcpEdo17lbeB6b0rLPcULOn+yz3ey27jemv99xyE4r
5g2mDn9sh3Oyzvj7v+quNfHiEb1L8dw6DpYdLJjRmaUNiUDBRt2ywgz9Tbhj
El1JoSKUq8yBAwfYUROC6FPN4cVZM1LoNZ3W4SdD39bWaXr7C2bEBtBTU7N2
uW2wX7fb7Kg65GexPGGf7XafF7ob3GQKi+aud+xwKbFKpRFEga6uLpcsp+tH
FCCIVulJ4oRrHpoY4t6hX/7yl+eGj8kOoAdqGztNZ+MeuQ332/jjrEgqXUcH
hZBUfIWZE6+SKQwVbJd4ZW/weYFTDs+PmbZG6201tpihqeVzS99OBa4URvK3
SeDTHppKT5oLFUZ0CLIdn4vq2KWXXur15Lsrw0h7YjTrNBeqpVGDO4l89cdw
sgfXuyqDIee/XgYoua/dVb/FtcQQPqQ9fVlhiMtSn0TtiaR6BQOfJHCem7r1
SzLD4ECO9QaYUpa6n48L5FLvFj21bKGgX5YKG9c7y4N5XrhH9MRuiJRctDHS
IpiuCrk4bBIFO2J8QOKaZQRDc0K4H8GQodZ5E6IYajwU611L9Y033pjLCgN/
W+lVwZD3yK59wWhqanLlaYp2+N3WBGeGkaZ1BQPXB3LcdtttcVVYvbBSqX5x
g70jAeOgaHA6q5TTvEu4B4HCzr84gWSf6NrSUDryugk8P9wjz0oXR0okOq1E
OMFANELbo8uLW1uZGQb5DO1jFQx1krGrR0RSUZo8kj7XUTZ7K4OBRcU/AqO9
TMRQx4epMDXUKBUCUi80m2SFwfZb6tM0YmhJ6FxVAVrkgvdCM55rM7B8nBmG
KpZ0GgsGVjm0YkdywT/hOSeGiCNiyfX28mBeEO7B8vSVpORSFYC9qyIXPSt0
g6D/YWurYHJZYcCZ2rIhGGnGSzBobbj88svdl1GQr33tazPDoOtD5UaRC/US
vLq4JOpFZKsxjdNW02WGQfOwetIFg6oDPU/pksBuNBlDV4X2g4M+4fq2ymC0
ohy9IjDas14838RrRbiKi44Ny225rDDUakf7w13DPewddbOUXGrtYrkw7dYI
VISh95NQktAeCM2Der3arkQuApewOzG29KH0uN5aGQxCR/dHCgZXFp3GXyIX
9ospJH05uawwIIPGEwytLM0zgsGWae3jpA3BxsWZYRApSeq0JMSBcGlKLnVi
oiDYjqvGHK7aBIyDosFLrTc11bBvK05AhTSyTmjMuO0sHXndBHQyPSUWuW0i
EiKAKFAgEAzajZWTobZreTgzDAwIhiSFQW+KArrjA5Hkd0GY1LJz3VQZDLvu
73IXD0Dkwn1kfdO1EJkwCKlxzwiG3Gkot0YwNIkGJRgpxn6sa6+91n2ZJsOo
GDPAgN2xCezjFQz5P+wVFgwkP6RpZOYrwnhRuAe+2r2gVaFRAdZkP6ZWhTI0
K4WUp2ae6y2VwaDjFbJpKtgW7eZeL+lcpFrf9ra35bLCSHssBYNAOcQ3EQam
XZIezHxmGOq2ZK+SYGgfMT3hIlcq6TIAuI1cNeXB6PWnUDrsvY+rgh5AFmiq
PCFMhZgnKBln5m2slMsKA/KrHK2p0GJHi3ZKLvAIZ0A4xzWGiBlgoFO0f0Qw
CE4oBxVhbKV924WmJCltfBS3BXC9uTIYNorKiRcYbfcq6vitjoShs94NkJIv
Axhc2cD3McVEoE0XXEox5F27aqGwjVRzlWC8OBlPnXeaSpqm1VSUXiBWkaut
fqw3VQZD36NqbwJDsIlrDBUFRn3uaElZ3xBdrgHjoGhwSAo3poOrUZ/kg7g3
WBA3GHWruJElwwRUqmazhdaC1mPpMk1ADZ04dmreUkjyxspgMDwyvgJDL2lo
5Itg8EmDb+24DAuEJ1MBzEvCPbSwgkJRTKkS1Ioohu3V4YNrKJYBBmqVvWop
jLRd/4QwFXrCcJjIoyTbf9xgb6gMRseMwEWiGB37dACmFFPCDoOynmIZwKic
QYecwKSbpUQxeCK0gTk5soFGrhKMl4Z7HPoi2RbF1AKADhDFiO3CEUyuqReK
gR/X6yuDQQ5xrvlLUyHJK49FFJPXSj4NioU9U1nBUJRQuCMwUEYRtyhGkxxb
qbgY58orr8xlhaHwE54VDPEQGw5EMcwyiQ4ueg75HCeMa48Hs+FrX5I3d5c6
cEDoSHrpNxM6BNg6HEXo6JArLDXfQSRC75rQ8b72Hfry61KdJteGeyQ3pcqE
OSZAKTctFr5NCNRctYRDOVO0/943zWz0WmbV4krhTa5AB0YJb4ISLG0R760O
Z+WddSIQOpTrdSnqd+wLgzciObs2YAziHaGedEpE1OXO0SuOVSEVImZZh/od
+MLbjTBXmhGn9MxwTz0IKbNQcgg7hl0EGSV7Hdp35DtbS+F9XbhHiKwihSie
noQlitMEqJZa6VdZpOq1qN9Bbx91j7nej5eGQTBfyn4IV7md5KKFq1IBOPso
6dRhWo/rHfcOzY2ojDepAwKFudrTOSfmxMAd6GOdeUtixsYHuVJo30GvfCyl
RYSy+gwxI2JoXB8laUVszJS2VGjnHwaa68YU6zvk3YQbYYzVQHl87Wtfixgj
fmuPiS3GhcSR2pusCORoXzaw8ev0SrHEy8I9NLSyumIJ2UBUnVgCJz5sMXHJ
jRj6BVTLVLnLvF2uVKFbGJHOlyMi+ilvndKP53BQuORsoKS5fLd1Sf9EYFLn
VGBIXauWWGqZuNCc4RDBLGBS51RgFHxQLylFXxSzdThzlWDoXuqcag2175KD
108sQTF5kErcvKYyGGJZCr3pwvC33HlRTEVeUYyMIieyZgRDm6L2wQsMyT+M
a/EA2K2OYmHfv1Ns7IXXRpFXVwYj203WTmBYLEWmAkOsFDr9nKXB4uCnZgSj
/bKsg/YywGLaACqiJTu73QB4eCH9shGYV4R7ZFOlEjUbNkHpUErNBiVEjMLF
7jdyigT2XDdUBoOzzqFIKZikBBrBEEzoyCkMTDhIJSsYHcbB0RQiGnIXbFIk
ms4fUX6IDIKyLRnAMHEVdwWG0FtpKs0GjzW0JLo903xHIcr1CRgH5ZVhILaY
Ko8uUqkuQnFAg5P21LYPeQmhaWzN4OvmIDBp+4PAwHOk1ay3HcGIvySU8J/A
ZgCj2ji9NyIV2UDluAWGVVIQIj2AOeF6VWUwdB/ovBCBSVJaEQx8GNJK7iJ+
UKC6AZiqcI/WFB1BIqKR/9BxGh7MNvd2BnUScSFRMEM8iLaqMixEQVTSlDhM
TscMaErkY8I2IefFh6MssoKRA5oukFKpJMYERgfqqYxCwVtFiQxg6ERZv0Di
Wg5BEOV0PB4tpFwIP04RO2PdjVeWh/WqZJUkQYJF1YnekZRyFIhD0sSF9OR9
5GdnAJNKkMDIQqeUI+9JmhUe5UJwQ2dFFjBpD5HAJGnUSDlmgMEIu+1jdYnG
EXfjFZVhgaJ6ie6xAeX4rnqYuLDU4sENwFwf7qHhCchSyh3Jc9uiBKvTi+Qc
idh4fNfLK8NCL8sr3Ih86D76nmTkdDQ2HQpZYaVbX0U+RFYnh4t8NKmEQxbc
xVg6oioDGMwPIkvkJTDazllUdtucykYLUQ3hUjaYN9+4Gy9LYDlQN4TR0DHB
81pDNHaBcGDlSWEisH844NJdTCo0ia0ZfN1EBCbdhaeJYBwkVZoI6w5rq4WN
NzlRqo5H3l1XGVa6L02wdA5I0az6WjpeR+iKce0Joa8tM6y0u0WwdHQbe2BE
PvSnTvjmQiEFR3kjMK8O99JKm8AkXkGckniDbb1c6FY0Sjzg5trKsMjoy7kW
rMROxynRnxRE25GB/ExIQmcBo2TZr371q9w9wz3y2MFGxynhVcGMskZILZ5L
fHHTS8vDek24h7SrTKYppYY6NUkEfCT3uPibjHA84C8DLPqQwjtDIiwZa0yi
yEceX80RXKTY9LKIDGDScylEvquuukqGOk5JZxVS4ORSxsmuqJ/SSyrDUt8O
AapgcSwVwkM2S1PCxQppaHeROFCz/QZgXpusvo4oFOVQgNLNJ4UpsZLUf6Qj
9I6M+DKbF1eGhUXX8QiaEhnxsCJrdATwZWpxZOCa2HOZAZbsHfvv77nuHqdr
aV6oYeWnuIj1gRVfNrS7Mixi+tCnG2HpBEBONhMsvb0Cu8tFWAsNqXNUgnVj
uAeXq6NbsAiFFf2JLQi3wmvB3MV31CKQAQzuaKgwRjDyeHh1g6akQ+/wyLmU
8OEZd+NFCSwHShDUoYJM3CvcIwmiGmvK36oOciGuwjgdfN1EqsM97J+qdJoI
ORm0G2usidCgA8+pwsG+CdYmvprwmsqw0KLafChYrDHGgCNZBQt+QTsqINNL
o+Ixthlgyd5yOp/Ix3rTtlgk3zYXsmLb5R3TZYnDH0+LfGFlWMqC4poIFnEN
80L+BQvdgJVQihq55cUxlj8rwnpduIe7oy4k0ZBxWC+7bmEb/7b4uh+d+UV5
BxmMbzB4QWVY8ifREZpX+uIczQt9iD8b3i7irCJlWhuqZoaVnrcmWMrncvy2
5kU2lXBXh3PhGGBy4llwzy8Pa0+4xyk+OqJJsAh1VZnUvKAddVSqf1yEOPhQ
nHBxfvieObxscXFegId/fmX47NtHdkgTCT4vycB04btrrsgl8KANF8Ehc2U9
znHPbDHLIw0mt6N4Lsp8obG437PqUNgiHnB7QGXcmCPrwFmzwg2+hQ4EysIN
PYA+CDvi3feQWdZcu3UOL06ZoULBjEwoX2yj0AIbIoWvPwAgXwDLeZPfkTN7
OsMbi/yJVxvW0FdXllxgv7BUuob++g3WG0dVukhzIs+MPCobi5KHFtD7tEDv
ibb4/nGT2503Y8vqbrBzG0rmtsj5LbXaY29G2JK7r3/N3HyZ5MSjLMgvmb7m
A36m9vfe+i69m71kvUQ0UK9uynM6KqwoX8e5VDHeJfzIBe8hyzjVQ4127lUt
7AX2+2a3GjZSzs/OmqHOvCfJzjxbjI8rtdqLa0/wWbaf7VxHkb+31j/cut/X
9pt7zOTMtCl01HtKHizkStW8RBVxO1rn3uEemkAHPnmqbHdZR4JLvfiZnpUT
jt3mpryroV8MP9vvqVDbPZWL54VYxh4ZmzWLCGpKiuJmbDPRstvsKEmKrL0D
FKb8CQu8rXulWIAfqPc1+Zky/PGGcE/n7ZtERnDn0Ukkv0QJciHwEfbf8fVX
3+kX/uJd8MXpERudSuF2528TMQ6PmT2SnnAkiFke8icdBWqwF3r3obGSxMh6
tofqzVUHeuK9waYaNVZsSAlZbiylKAGf4O7hrWrLOG2RFJx/e9s7c5uCxn3g
A+P5Hna2QQvnqsyQN1ZRS010skFzp+mf13lrxzmSte3jkBgd7GEDo3A8xD53
qsRujbOeLNm7HVZNn2OIGtNemHbl4ZnhLl9V3t9V9vAYkSZ5r0B8LjmYK+ak
SXPj3BMOS7miWDAY9R+4yewWC5x4pnnkIx9uVaA/mqMu32KmwuFifnyrYRYn
zEjYNWqmOt338oXF4jbkeVPoH+E8gojS1FC/6ezuN1OLa23y0Z2qQY/WjGmq
Wv8GibyZXE1Q3JIWT9IjunRokn9RwuWlTvyKBKMqg9b94he/GPjLW3947k8T
Xe7Qpdz9druAl7Y9PQPPHHJHF+0xY/McexXPlrHY2djVc6ZpHPLHHTi8L11H
jQo9HOoriO/wqak3PQN9odekOmGwUql3TETJ07q8Stgek6zu43XngFmkRSGo
qNNPxVLJ+4nN4aluf27F3R9mLnvMYwKFjg922J2cBf+4M+Fqd3sQtQ2NzqfK
5xtM/9RylE7n06Vn3B3l+Rai2KS7Z6moTrrVUSdq1oqVpJhPg5c+gmtbGNPH
zfcyL7/8iNO9ckXle9h079tprWs3lI69WKOj8QWpYiDcZ6SSMGx5pM3sa/B7
M9irKJVvLbVjwJ113fEEnMV+f8DOobHD28I6zxca3K0dOy3kHSzmEUcKHG0n
S8Fb/aY+XyadKXi61/fNlKTfDcn8k+O2hKA75PyhF6w/vUt7Asfaar09z/fG
0bGIOj9fr3tCCdK5wCuMRVr8AzxHmjL8c6fH8zt2VNWZ7qEJGyVMmH3Qxerx
3ol5szg7ZXWCP6NiZGI2krbf2oCd/pAK623WOu9e9mDNsXWV+2tWp03T3nX6
q7rejPsUVUlVr0xoesqWCKiWksGO96QWXLs7euvC0UcN/XFo5X5JqIrnaNKH
x5T9I6FJutqGdtG4jlh/cmcwpNv1e2etKcwetl6WZ7TdtXWmIV/lDOm64xgq
vndnxUwOh/fuDI47u1eqtefVkaHWHIylYYiDyS0lx3ElJ/Yt6lC53AnGH1uU
05FF4QfailCkbXS6rAhFWUv5eC6EFX+MekHx7P1lMzFSMN2d/iyLlrY2093d
awpDI2bC+mqzlssKlpg7LNf5k/4WTX9np+kfGTMjCIE3pynxytd+yp5dJYqQ
F/cvA/qDDsxKKLJseg/lrZHXWVxbTN5q4LoqUWSnaRtbjBQh+0DqjFPhRRG9
cIeGBC4yQyTFrrnmmpANAdqU2Yfc1TZaqjQ6ijeOLFea4au01tmPnJKWYAug
ajR3jSwzbxrc+u8wLSOL4i5qI0pPalJsLQivbnOXui042vWeGu7wvOlta7Rk
s5Ma8kHlBmdo+Mkc3elOQpEM6vOf+xy3dmfE2XBeTi74EvNSMNSGqdfy8ltJ
Lg1aBAicBK+lpEoEAWPS+OpKqGc/JunmGy53z9GHoGOSFI9N9B4yh/qnImNw
j9K3Ej1aARoD6TDSznV2IREW8vLpbPj+3x1L9F77zImnnmGX4xYdS6TIg01S
KEu2Y4vE5F7IxxCNiDRIHrmh+OaWp5VHWYXcygcE3dOcea+z0gOChBbp9PVU
pAkUFLSHC0NJetmqtYooeU379x3Nc+stn3Hy0nTLTSYczSM0YVB0CIehp29T
An1eIyDqIXKYqVhlfWp5VGvETuHAnbPOv9g88bLzpQqVRqCgrhfuCjSVcMCw
K1Wg2VNMgoXdsA7AU8qD9pl/f6LOW2+83imd3l/cfp9k+KAdw5Fy21w9m+F1
cje1I0IzG71WBHdTQjHykGzNPCvcwy6pr0HTI4dOHvzNb35znB4rwJQ5V8iN
elUCz4GrDU/ixYMpVXXNiHosk2xvb49nFXOKK0qHxhJBoa0dVsP/clCeXH5W
gkcBEcnixWqaFa2IHJmBohIFWURaevR+AwJZguB3v/vdFWG9NcFPWfv7JPCx
5taqx7ndfvvtzh0/cOBAnBsVCfCM7xa8sjI8PDXFipobNWoqHWgIwaOCyNgU
mQSPliT82/hW6yvKw3tbuEcbp/xkzQ/xJ2fGYeunBlryviboq9ZNsreU6K2B
yAyLLnnmhkxrbnIzCW3S9yrBjWxX19xoQYGf4ltdnlQe3tvDPbhcBWzBw1OT
QRM8Sn3rhZs+X6ou8SWhT6wMT6+MpcFX8GSQeDe0p+V2Z7SouuB9cBEZsu0E
A6eKwRPKg9sb7uHE6mAcgaPgARviaJ4SwGEbUZscVqc0KC0EFL3DS2+ygEOp
4x6ks0O/kIu3nkd8ewrFVKSD15SKmuxMRZvbMTw1H18eno6scn64Nct11o04
L9xDmtW4Ihw4IQWqU/cQDnRcAI+9d8KBXgDw4rBUB2lneRw8c+G8LZqxoYL1
yScwWickqFHySFETE1Efvm+4RyIIwWU1tPh0gcJYOr+JFUEA8WLU4vu4Spht
CSfOy//eZVqG5kM1Yy169w/36ETQaSfp6pGZ4Zxjj96xDh38SGJiVYzJ1iAz
5Nd5X4a7eXl5HK8IOC7Oz5qpkV6zZ4f3pjundPz9WhzjsYchx5zvn40xO2V3
dAYvkBFZqX7QF0lVS3hjwdBZdEVJ39O2RHWV/eaxgfax5fF+slZ9ecjn43a7
iol2lCxO2AhqeV5MWfSw50Mmz3nYQhygOjxeiOPqwYL00YlVSSzCI6nppT8K
HrnpppsqIq0XH0607fEBw2zxJco6Qz9kXu8SuXrMVe94/NDI4klhBKJ6BAmh
uW94FHbAH0KVWrIKackz2lhI06eOdccqOtQeUxlpQjZ39GHnRKwNLo61uXsc
wx5PDl8uKPUcY3I4sigBO0zbxOGcpoJaJMMPt4r4cAOa2AplfCcEu6SworSt
ah7URaU7HLaPTubhpuH52+dHR6xm8FG1r4LmarvF4vNj1vv1IXcxlD48YQ7l
61wQrVC6obHBp4ldgJo3E4dNnAgaAZcFpM8O9zjQFQS7urriREhjofdxNTQR
jldEYUfX+LLyC3JFWO+pELsdGpkyLXpPx+YYQ/skUeHeYqSpTh+U7qwDa3mT
nIJDlRzbeXaCIJHPxMREPHoa5sK/ojvcyrTwJjED3riODrtHlcfbq0MUn6pW
PnVZsBF3XW04hndP3jQ2NJgGG+Uc6p2Ia7G8uBzHiQnYwyEVv6PWjB024nc0
H33rJgrzZucl0XdEG4/1hk5NbpN8JJliJUqToiNGVsqBfGSlSfl3QXjNUmtG
Iq4jThJssKzkHsGgEhbIapB2sQak6bTTH1osvgsF4wM2HNN0dkAcVqMJE2/X
eiGaDy0EGA/sk/Ua0qgVJmTHh0PrEZWY63SzPNYSsmi7TWNnwSrTZRut+tTj
vrYRq8PnLX+MWf9wyAyNjJn5mLPudTbOv11gwumuuv55NXLQVwW1KZCL3chl
4GLhnuq1EJgxsjVMMpkJ3Ireij0vDy8/E73aeXmi1x/ZnyY5LfkbXMoiLMfO
3abO0h122pkvCFvCOYIlwrj7hXu0PNG6RGAibHGwaXcH28nJyWPCbXWgoOHk
zD2sPMJe0Z5q5qfGTH9vp2kj0djSZpV1t+kvDJmxiQkzZd3QiZFuU8u7Wrp9
hmp5ot+0dResCI+YbpoHfMJYk1B0jteuSXCWNPeamprWTIKebGJQ6/VrEuy2
wr4h/MrcPLT8JJ4bGF05sUaLfCNVgl0uqfug8BUaLmlkofwrpPCHWVxyWkKK
BiQkFHX0ox/9SEjhaVCTQtZ1gMYl5ZF6Xvja/Fiv1S5Ww7R0m6ll8+Bwm2XG
HwlOt/ChCQp82KorfHDDGBmXxgqk8KGNEL2LJ4ZPzfWQ8vi8N9zjUWhLq9M5
4R6uL+KO+60MG0E7y8XpfwJJioF2G3wUgleui8uDfF+4h7eN60s8LpDETwzP
TgkP0p/jQ62UDIS62+BhngU9tnXK57ywPNi6cI/9Atg8tgEKLMYb+trPok4n
pEZ7sRzRzGx2QoePQKTJxn6uDRKzdeFrIExiAZa2LsU54Tat8YgwGwItS2tt
CWXZWMm0P/nJT+otF0TRbHuBavxL27MD8+DyCLw/YV/UPBstf/e73wkB3r5H
0Zls6u9//3t1PYEu6T0MKnSnI0QU4OBhpsFIOn3uQeUROBC+xtIh1IT/v/nN
b4QAr1EjzES5DQ0Nifr4siQlANLb2ysKoBk4EgcK0LseuzYfWB6BD4QhkS02
FoG7XdBzkts0icK9ltVOD5BgalQDkDi2iH5DYUEZCbZAFVBPjvtC7l8ei5uT
dUC68V6s7lBbHwTH8wIcKbziy/qOd2yGOKNmSOBIgRP0IwRgTlRvn/NonJeg
4bD4YACOl4H2hP+tf6cDu1lR+BmC27mJBKDKDnI0DEUXPEeRgCML6KoHX4hK
CtLBPqc8CT6UyALWF4n7+Mc/fm4YEhmmVMKQ9NrA3UIFLtFn5DzoYBMqbJCm
05d4j80HbBBwAM8uj0o+oEKXM5482QFLchGEoAQ2gVetzj0jgcTaAQmFx7HY
wgKGxTzwGQSJi3FWeSw+EsCxPZgcLT7hr3/9axGE4BRCgCDpEhSlUOErJOEA
h1jjrauDhtQGST0UKYE6ilY8c6/y2Hw0DI0Vg46YAwwh3C2UiIbolUPvkndi
S5hH6URX5IC5WFZmwg4J6WXCVWChT9Ce+IGxM/ke5XH6WCIedDiDE6zIGp8X
pstOdE4/FU5UUOzzpwe06MSH2/Dr4GTUhjYcwMU0OqIB+Qw2sLbdo3VmebRu
CWjRHEc1j1UgRcgbhlO0IBWrh/QyZatEPFonOeHFshEfwNWYGrx9wmnElM9w
oBmaHcQoB9xTrruUx6whYEaCFEJhQZghbenCjCweoNAnGB8UqjVrZ4SPkTV2
fdCBj4/NDhW7lm4/l/0Yr4AlBDHie1hEm7VPK4/YJ8LorCT769D3IIcds3P2
uPmtAOzqwVIAHM8M42jDjMBoJzsTjI7Ee3fVtrBhi2QvcoGTizjxGQyHdsfQ
RnN5cnk0bw144F2BBzREjkhu0VJLAli40l+DMoIpgYNqoGQPnTyuxzn3EB0K
Y0IxonJULcvJOX8k1+xcj2EAqwn0BlBaJnRYwPHlsf10ICrbgDHTYAEvk5+9
7bbbPKLufXmOANgzMlsQBvsFJPYAFY3NqU4k6OuHZeFJnoVJ2KLJXgAQh/go
HSbO54CEQHANxkoHHfmQOR5EalaW7DpyBFqxMTKdzWcCuiggnA9YRMOjz9i6
QQhKUu7cQF/ULj4pTMo6oXzgB4wFCogGAjs9z5hnuBoM6hACUZpHOAGBJWcI
7AgCjf6jbsGQfI61Zm1AF0HGQKBYQOVvfpbPiLMcdr1OzcNLxZ7GEqesjfc0
qaebY5FEhFI9Op8LkyUA4rxBBALzBGYwFIlg1oz8mlVJ3gSf6A5Px0EjeoA7
8KX4ihQ0NOJrqBpkqlgoOtPF79CWlmD0BzIEy4hgiC4xJrlKCIN9QlYZm8/R
pmwjI59J7poGauQHf5OiF52ifz6ScDWOcPI1jzfr+77VHF2dbzfjM5Omo77G
/d0+Xronsdn9PsEpYyJ2XBbqhtgK0CSFiutLtyHHeqE2LfvdL6wb5ksUhC3g
rJNPPvmYUEEXEcgeu250qxoRaswLlrK4n2q7k0H2t1DNxGnD1EA8FJUlqh9y
q6MfNXUYDqZExOw93298nLvF0qF2MGS0uJGNRFUhyTZaZtn/UJ6yWwM+vqX8
QHII2qTJuxa9HtqES7GhawDP7XY6GleILctEU0r8q6sTu4I/is5jioTGIIy/
om14UBM2ptCGlWSbE2oFwUTNMC56E9mG+kwSS4N+JVpjMeFNspqkEOAtDuVj
tVhECvyUx+FhcCX5j2llWVBx/J/CIt9nbOAiI+ROwB9dLVmBr1l5eBylAb/j
4mG60d/Mn0InvI4XAJNBN+aE/8bYeCDYKOwubIKqZH4sIM+xmMSHjAvdoCfM
afEQa0BeNDHuPpyHst8UFFTuSQ5jUjx8DNeQtKbLDpaBm5gVyh/rA9OhXVHw
QMKeY+6RcGaK5IIF3iO5L+w8q4jSJ9HHzIlPWU2wTmfPiuKO4VVQXl9PAbQB
FS6EgI31aHo0O4oNxwABgrPQSqStULUYFa0qGsS1UFpW14ri0ZCIJGgjSCY7
hPA1l5eD4jswtY2iY+02iuoNT2Bsc7/PdtDAiIOfcFApusOzzJKMNEVbKAAl
+D68AZWwZ+hUwggoiasHdVFG8BjUR4ZYEcIyIhFUPqvIirK6MAH62K78SY4J
TnY8wi0+IsiDhWAC/uVrWAsKuAyDWYUhcKMsU9hpWgDuEKHcnR0sOIUfHuBB
voQXDffANXAQn3GPwQGI3rfK9VTwOQbMLN1ACj61P9ZrshJl76GAkS3/12b+
63jZPruZr51bHOAB6QDuS3yZWSIBsDxAmbFYH0RQoqVmXUkEsA6IADkJBB4R
YEHwDhB8iQA6P2RTb6rEZcX9KbzxUHbqiKMy3c4Ct98pd4GzFxhhWBozRNWf
cAN2x91Gof385z93DiaKji32iAiigiJEIaIYUXDs7SJxgOJEgaJIUXq8pgpm
RSmhcBFRRBVFjEVEMSPORHUobPwMRB7vCBpQx4AuKE2aeX0t7iJXSUUESa3g
hODQ0dFAZIElpsuHhCNivB5/FDh+DP4qtpL+AawbAsaeVtQE6gK1gfpgDihU
zQHjwRwQOhSrhA4Fi4pCVaGyUNyoMeaBatM87Pd9Y+RVbhrYOpaBqRCPsxQ4
kfgwhGMsA9Pg2CriD0x/OoV0CbBZLAEpo3QJ2B6MLcDPQmfgllP4gr20DJqC
lgIbit1hGiwH+gPbwZKgQ7C7TIfWB2IY2BnHAacWlwWdAtujV7BvyDuyjFJA
nhEXxEbKA32DWCFiGCG+h/O7nveXsvJ+TeR9Ey//jdDtvsUsjA+bcdfaMB48
6lRthw1f9X2pu5Jp3OEm3z3f1NrkDsosjgsDhxNAq5u0zdLEM2NrKgxsVubY
qxnb84v+1jYzV/Ct+wfD3obpvqawt2E6GXDrWnLODDTFTUrFtuol03FgXZP/
/na9xvpI7OLaWEKNDvSZ0bnVXLExftVMh8b4wvCka4wvDuCfSm5UlbmhCG91
acaMWsEen15IHtqePrTFTPcUKVS1v9lMrpgjKeAf3uoQXLCWfbTPH3LKGb3F
dSlOUmesz4VXddYPzBxJCf+QZx4Xju1tj+GYu7zkx7O4p/vyfpvdQopheGi3
MFyatqGI32FhZvrCwi8d8byf0TYTX4LLxrKFcb8Php/q6pzL/QZPo33UjeEB
/y0dw4ZFS4NOzPI90wA1Xa3Npj4cBVzf2u58p+bmVjM4s5Igru9vjzFqTdOA
zuO1Q3pe65hcLX5lUzrXE+O22+oDTWZgdNpqxvDW76r9pjBtI/u5GTM9Oe4y
I+PTc4zt4fvzXeMrCsbtataEjXbbxcM19WZ4brU457+ki0YP1YqZthphoK/H
Jay7bDA8MFAww6PjZtpq5DkLe7iPk8v3s2Du8l0UGRg4d6f/AxMTOPU=\
\>"],ExpressionUUID->"839e5256-5efc-4759-8141-18761c08d589"],

Cell[BoxData["\<\"Exporting:../../../../Figures/SimCDFsConverge\"\>"], "Print",
 CellChangeTimes->{3.698257848507408*^9, 3.739780231890876*^9, 
  3.779208702511633*^9},
 CellLabel->
  "During evaluation of \
In[38]:=",ExpressionUUID->"fb3afb74-8a65-4384-adb0-aea2f7f1c618"]
}, Open  ]]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"<<", "SimRevolution"}], ".", "m"}], ";", "\n", 
   RowBox[{
    RowBox[{"<<", "SimRevolutionPlot"}], ".", "m"}], ";"}], "\n", 
  "*)"}]], "Code",
 CellChangeTimes->{{3.7792081533984613`*^9, 
  3.779208178987584*^9}},ExpressionUUID->"27080653-8a99-4d04-9ac4-\
a9ecebd2bd8f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"<<", "doApndxLiqConstr.m"}], ";"}]], "Code",
 CellLabel->"In[40]:=",ExpressionUUID->"28adde6e-99bf-4751-a663-16be1096a5f3"],

Cell[CellGroupData[{

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{R,\[Beta],\[CapitalGamma],\[Rho]}=\"\>", "\[InvisibleSpace]", 
   
   RowBox[{"{", 
    RowBox[{"1.02`", ",", "0.9803921568627451`", ",", "0.98`", ",", "2"}], 
    "}"}]}],
  SequenceForm[
  "{R,\[Beta],\[CapitalGamma],\[Rho]}=", {1.02, 0.9803921568627451, 0.98, 2}],
  
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208860540903*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"9190bb35-7e9d-44de-a67b-137f1b9ca0bc"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-GIC fails (\[CapitalGamma] < \[CapitalThorn]):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm["PF-GIC fails (\[CapitalGamma] < \[CapitalThorn]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208860626174*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"40e9923d-ad3f-4171-ad8d-ff268402fcb8"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{\[CapitalGamma] , \
\[CapitalThorn]=(R\\!\\(\\*SuperscriptBox[\\()\\), \\(1/\[Rho]\\)]\\) \
\\!\\(\\*SuperscriptBox[\\(\[Beta]\\), \\(1/\[Rho]\\)]\\) , (R)}=\"\>", 
   "\[InvisibleSpace]", 
   RowBox[{"{", 
    RowBox[{"0.98`", ",", "1.`", ",", "1.02`"}], "}"}]}],
  SequenceForm[
  "{\[CapitalGamma] , \[CapitalThorn]=(R\!\(\*SuperscriptBox[\()\), \
\(1/\[Rho]\)]\) \!\(\*SuperscriptBox[\(\[Beta]\), \(1/\[Rho]\)]\) , (R)}=", {
   0.98, 1., 1.02}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208860659939*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"40bada2f-6c3d-44d6-8f72-07e099dbec67"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"\[CapitalGamma] <((R) \[Beta]\\!\\(\\*SuperscriptBox[\\()\\), \
\\(\\(1/\[Rho]\\)\\(\\\\ \\)\\)]\\)< R:\"\>", "\[InvisibleSpace]", "True"}],
  SequenceForm[
  "\[CapitalGamma] <((R) \[Beta]\!\(\*SuperscriptBox[\()\), \
\(\(1/\[Rho]\)\(\\ \)\)]\)< R:", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208860695771*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"f57e9183-4c59-4a54-938b-23bc7f2de07f"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"RIC holds (\[CapitalThorn] < R):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["RIC holds (\[CapitalThorn] < R):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088607273073`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"5bdf0a24-4c23-4395-acc5-0da9415d746a"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\" \[Implies] FHWC holds (\[CapitalGamma] < R):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm[" \[Implies] FHWC holds (\[CapitalGamma] < R):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208860757784*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"6df74598-748b-4277-a481-b0bfd3223f01"],

Cell[BoxData[
 GraphicsBox[{{{{{}, {}, 
      TagBox[
       {RGBColor[1, 0, 0], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJwV0ns0lHkYB/Axatkskdoa1+RSuhfNVqpvxVaL2lzKtsblCMusEinpbGXK
WKGkI5WILqSUUSjLdGOWVclqtLq4NTnW9X1/yl389t0/nvOczz/P+T7necz8
Ql0D+DwebxtX/3fHgI66J50B61T3grT37mMwyd5gX4vAAXFWnc9vc7bJvJBe
KHDHorTg+G7OTjUN9zIE/oiSiDWCwxh4+A89PCuIgO72EDX/cAZNS363PyWI
wbre0IFdEQyyZvwYGy9IwcW5kU3fH2Ig0Syce1JwHS7p0jvG0Qx+2nVFRvqK
UJMRpm+azECLSkSbTR7jfL/7GM1iYOnCdFQkKOCQGGmVXMAg8uUqXOivBrUL
nhnxlMHMIr1mNbVaaGxwjRfWMbivsn9Ru+YVjLynVDiqGJSLMwx39dRjhlwN
Uz8zGLBaO/XOngZ4hpI1hXwW/JE8XUPLd5Ctzufd1GchpL733fIbsd1z96aj
5ixexNi+rJzfgnq5R626DQtRUvnAPFELeGVtpittWZie6R65ybQiUGho8t6e
RfdQS/PrpSpsmvwPk+zG4npX2TOd0x9h0+MjTfNnoWN8g21rawN/urWP2wEW
icHFgVkW7Zid3FnaHcNicH1eW9Cxf+FkFdX4+hyLiOWKom8rOqDQ5UVnZrNo
yVck1Jl1wVF/Z2fpfRZj4vpL1oe7Ubiz+1xsFYsFGzQmAst6IGYjFcsaWGy+
avbL3ZkMFmcpSxZ3sIg09pnzQcRifY7VEq1hFgt7dmg1bCVIOyjqf65OoD+V
aCpGCYystG3tviGY9PiSzDy9Dw7Rf9gaTCf41bbs7ddOnxAeuHXWVSOCvB/8
sh4NfoJ+b7Qx35JgoNtAtz31M342KfhYt5Cg2G2zeopDP3LfVyY6riA4tkWa
WdTej3T7t4PL1xKYNTm+uSYdAN854fhnB4LV38WkCJYPIrTVok/E5RKZ1I6o
KQdxwrR0tnAHN//ZKdU+yRAyuoQ2JV4EFyZ5R7haDMPbV/bVrQAuf3PxVb5i
GMkHq8b27yGYfETivipsBM9nVSnbDxDwbnrLVNNGkRdQHlJ9hCA8TXZqWvko
zq7L7nCPJXi4IE5Tb+8Yuh7MjS05TaDnGL7wuM4XdL3PbktIJWhc9LcySv4F
JEHLSjOToOAyLNq8x5HRHjKvP4fASybUM54YR9mHPc4l+QTR0iuSxlsTaA3a
6Wb5gOBOh/ElHWeK22mrDfmPCeIypL7N2ygam+8JLTn7u/Za5rtQaJkvcN3C
2UguL9jqQSHOMzx5mnN8kmdloh+FtfzLoMETgiDhxb4pURTZTY9e2TwlmBMz
fYtGDsXl2fbxARUEEyt/027IpajxL8uO4/y29+OrnDyK8Vybp3mcz3gUem26
SyFaZjHcx5nOd90vlVMYbJwceFTB7VuXdFldSZG6u2rD+T8JSmKHditfU1Te
gFcp5xQ7H+trbyh39weHmjg7ZS8u2thMsSMiV2ZeSVB6qKZa0kmhLz1pXMA5
ddGKJJceio3VaquUnMNU6e5mLEW49mH3Qc7znENanvRT1J0TJ6yp4v5Prf76
mSEK3jtVjg/n1mI7se8oxVITz/LjnOXia0uWjlP4+imbsjmfN9UaoJQiKcdp
5C/O/wEtvoow
         "]]},
       Annotation[#, "Charting`Private`Tag$1230636#1"]& ], 
      TagBox[
       {RGBColor[0, 1, 0], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJxFxXswE3AcAPCNdZRrjMqNxk2UZ5ykpFJxkVdndHLN44S0XsiddHVat0ke
zXU7Ke9HSjtGxnWZOHbuOI8YN7rZNDuNzavMGtmqP3x/f3zuQ068R0k2wGAw
4f/8PzhZMdazkHx2Z5y/VZqUGOC387Gq0vI2YhQcMiz6WEFMgqOTNF0viZnw
jPsz/yIiA67efzk3n8iG6cZtR54T6+GrMTXc1TUebKKnUwNtumGHiGVFX4EA
zhrx8StdH4AteQQJFjsKd8j8h0ZPj8O9tArrGNUErD58xrTpjgg20HLMrB2+
wd76hI7IZjE8xPAa6XeWwlRWr9qRirYtVmobl2dhpUYqmfSQwfWLnYP4F3Mw
nvRuRS6Xw4U321Oq7efhjXMceWrODzjTU8A70KeApc2CgjHyIrxFmyhzeqiE
Xc4b6VI6VXBgLflGq+UynEWKt/tOXYFdVVdMRGGrsIXpqrFgE43rLuMeKl+D
b3l1Tu8O+QlzLiVWf9lAq5VWZvMlv+D2yEBDdsA6nBPErOLNo8kzwVN1TDV8
6gSDTfTcgKk2o1qsEK0eLJKl0TVwKS4uk2L/G7aQtNcaCNC7HtOjfNK1MKYx
jisz34Qz3nCLzHvRXS55xoS7WzAhOMP1Kf4PLHb7Kszmo1sq/ezlcdtwLNeb
QNKhnzBr6OIPOrhJQSrDh+rhvApmgiQcnURZcmiOQB/k81vCotH5rGv9hYno
VO/Xa3uy0XaMfUFGDWjdyUd7Re/R00tz4w0cdHF0W+zFVrTemXKfyUeLx1iV
hkL0p1zNdeEkmu0b71Q3hQ55e5R3QYL+/GB4gL6ALnE7zopQodNl5VHkFbRj
6G1pzzoah52oL9agZ9t9aQmbaD6tzt1jG/3K1kSt16P/AgtOjGw=
         "]]},
       Annotation[#, "Charting`Private`Tag$1230636#2"]& ], 
      TagBox[
       {RGBColor[0, 0, 1], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJwt0nsw1XkYBnCiIutea45WcukmVu6s6lGEKNaRYghjKVFbSRfNNvYUJSnW
mpLrKWe7UJTbioNyqY1KKJdNv9933VJU7ifEd387s3+888znn2feeefVCTrI
D5knJSXlxs1/6RIy0PzwfchGB3FadVUVA1l7zUMszwHlJ4jJCGez7NSMIt4O
rLNYKdKrZuD6vL0wkxeMpfn34+I47wqWVCbzIjGW/ZcH/yGDt8bn7C/yYpBz
ZrKn7xED4RL3s/G8FEi78uUU6xkI5IpWneeJUNUp7+HbyMDb51rB8Egx4jrd
Ixd2MlCgAj+nZdWYOtkhauxjsMLj00DthTpktUY/cB9lcPyFDVLHnyJZaS6g
hzLQKFZlpKWbYDRYpZ74DYvSbvtnTetboJG708dFk0VNWOZSn6FXsFyueKZ+
FYuJlRuU7x5ox4zVgnJvcxbzpvJUlq74G8qmbadnNrGwpIGlnvldaHg+4F3q
xuJZjPmLxwYsypZrqpv4svBLrJlY7cfC+//UThqcuv2JQOKlG1ARymJQwjKv
13XjjeGBst1HWYg+VDQoXeqBSv+lHOUzLJS0bn7u7e3FiZ1NEYIkFgn7SvYI
9ftxLpTvrpDJYtIurzc0+h3e+d2pFOWyiDStK/62dgBDo842O/9kwebXXWjW
+QC7cLGjRj2LmbBX6WtODuJpmpt1aguLtZsWzu2pGIIkXM/KhGXhdF1n732N
Tzim3fSkc4jFca0A3X/8PiMjsjIkbYqF4ZCXQvv2YZy06zuiKEOgrjwsVzc9
jCar9lOv5Qlkq9ML9DJGMBkddmmNCkG4eUWnvOsoHG3e752vQZC3NUhYNTkK
Y7fjZo+0CCYGNVX6L49hsOjGfHl9ghJPJ5kUh3G8jH8k7DAgiHaOzS7uH0dc
4anN5iYEOm9dOnJiJ9BpsbXtoBXBD1YxKTzTSXgaSJmZbSTwW9Y0Jd06CeFB
78unHbj+hovdhwQSLF6ZUePjSpAq6x/J1/8CXyPBhNiD258puT6v7gs2JB3V
lPImmH9KsMPm8BScgr3kGv0JpG77F3SrTUPvfNtXnRCCiLSCi2o101itbV8u
tZ+gcm2cnOrPM3iiUr2vOoJA1SXC8LTSV1h7dmkviiLoMnrZGiX+ipYFfVld
0QT3sqDf6z8LKCTq254l2F1gqao1N4st4c4ZUQkEv8ZeE3TlziFy/ccu/E5w
d0ArXWkbxTF/M/3kqwRxmbGBjBtFjK+efz7nYP7HFfkeFL95q6c2cP5OLL63
fRfFHf6YgkwaQXyi7+OEIIoex6KxI5xDLa+OLIqi+NHYrNYrnUA3ZrHzwhsU
3PmCeJkEc9a/KLbforCe1c2w4Nz5saflRh7Flmm1Ng/OSbuKdjvepwgcH90a
z5ka8I/EiimuDBSazHDuak7MkmmlkG02lX6bRVB2VvJT62sK1Re6tlOcU2wD
1uR0UGg3qh1dkk3g+sf3xZsZCtv60YHtnMtPPH8qeE9x+EHhyyrOl40sEj2G
KKJLry96w/lwd8YOnc8UCUXJDhLOq7ftZx+OU9y6G1FmLOT+T/qVKElCUZIb
NOrKmZTYhgVOU9Te5BuGchaH5Rivm6VoFm3eE8P5irbCBKUUzDVToZDzvwaQ
gkg=
         "]]},
       Annotation[#, "Charting`Private`Tag$1230636#3"]& ], 
      TagBox[
       {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGDQBGIQ7ZX64uKBl6l2MJrFWargvqSLPYw2nj9jzmbJEDjt
ffb6prmSKXA6POX73kmSJXD6rn67c69kC5xeIOrf1iU5BU43cmxW75RcAqcj
Iheu//BxC5zm/t8Y4y63H06rBr57cbj7CJwuP2dpP+PLSTgtvkXwHiPjeTi9
7ZHzmfM2l+D0oay50pFvrsDpr2q2/Gtzr8Nppp+rBaRVb8Fps/8J24LX3YHT
Pr4Hmlx3IOjk2fL+5ocQ9ATze8+lriHol/nRko/+Iug5D0JrCnzvwmnGQ15O
vW8QtITAKr76bwhaL47zdgHDPTgd9et4cYgIgt5i5LpU2gZBpy2251jVjaBr
Ps67Mnsqgp5s/29B73wEfeD2HsvCzQhaUsQq2+I2gjZImmmu9RRBu234wSzz
HkEX+Wyf85/pPpw+02Jy7pgWgrbiP8000RRBr5iZaB7tgKDFVH5kq3oj6Bvf
81i3BSJoAPfdPO4=
         "]], LineBox[CompressedData["
1:eJwV0nk01lkYB3CSEpOksnSSLNOoSHkJafpKsmRpkNLJ1ltkqTHWRiejVzQG
xVRHsqUYJCFLmYipNJ3UhJTlzOu915KUV8q+xG/u/HHPcz7nPM89z7n3q8EP
cvZZICEh4cTO/1W0Xqk/w5dA5cB7Pw93gpcOzjsdIwgSFwXyipm3dwyEqAgI
vL/LcO9hLuRHF/QkEhjZvIhT8SBQGlolLE4lkPWfLXFk/iK5e8+uYoLKosOS
NcyFm7KUA9oJZDavyb/syfrv8ewNewi6HO2bnjPHmjeenRcTlAedmeKYy4pm
w2wlKdzvCvee8GJ71OuIupQoygyzhi29CSw+xJQtsqBwM1trOnGEIHLzq8ZA
awo9d0e+Lp/Nh6q+a7anWBD1SyKfee18qWrGQYriOlHXK+Zpxa4Y/ZMUEhbX
YwqOsv4dxq5uaRQFNuteuvkQqKcMTt/6RDHpqulV40dQdyT6VvkohYvg14Eh
Zk/eikM1UxQlxeLgdf4EmW3bq18u6IaP1P3YOGYVtYSIYaVuvCmzK9oXQKBY
pDNqiG6UyYWP9wYSSDf4iOuTu+H/6FniN0EEg5NE9HZLD4S6J6s9wgnyPtY0
yl/shUL/xdxl5wjk1QqG+/r6EHmgKUSQQpDkX+Wbo92PeD/nfXJZBBPmt/v8
ot/jvXvxw7wigjCDhkqlJwMQj9iYHrhPQEoaEls0PsI8sNZK+SnBbMCbjA2n
B/E83dEk7TXBpl2L531rxJgK1DLeSgisb2ocv6v8CRHqTc862b+cUvPS7HYf
RkbYQ5/0aQJdsatcu8NnnDZ/F7pUimLFss8yDTOf0WTcHvV2CcXC+oxSrcwv
mIgOuLhBgSLQsKZzid0IrEw/HJdWprhty8+pmxiBvuMp3iM1ivHB1Qr9qaMQ
V+RLL9GmqHKxlrpiOYbmhEc5HRspom3irlf2jyG+PMrCcCuFRtfejty4cXQa
2bYFGVNsN469omowAZeNEjzeTpabtU3Tkq0TyAlyS42xZPc3Xuj5STCJlesz
Hx+yo0hb6BnmrD0Fdz3BeK0T219UdXNBwxS+TwlfLeFGIR0l2G8aPA3rY64y
LzxZTm55lvYozkDrt7avGj4UIemlFxQfz0BHffcDiRMUDzfFyyz/cRbPFOr9
60Molu8N0Y2R/woTF6G6bCSFUK+5NbL2K14vepctjGY5zoZ2n+ccIJesbXae
wqN023K1+TnsCbTJjEyiOBt3QyAsmkfYjiEhLlPcGVDLkLfnEOHJ0750jSI+
K85b5Mjh3GEtzxLmY85D35Y4cfjdbUVaI/Oa2toyh4Mcip1H5aTSKRKSD/+d
xOfQa1UxGsrst+3aF9lIDj/o8564ZlBoxq60WZzPgT0fXzWLYt7kzNL2Qg4m
c5qZRsydQ72v829z2DOj2ObEnHKwwsPqLgfvsRHbBGZuo3NoXC2HqwPlW2eZ
hS3J2VKtHBa2GEh2ZVNUn5882vqWg+IrTbNp5itmXhtyOziov1AMX3Wdwu6P
zZUWIg5mT0cGHJgf/PzPc8EHDsF/ljfXMafqGSU7iTlE37sp+y9zcE/mfo1h
DkkVlywnmXXsT5C/xjgU3gmp1s9h+ZN8k5cyyaGqiD9ix0yrzAK8Zzg8KXDW
9WOuDcjV3zLHoSXPwjeW+aq63DjHcRDdMMjJYf4PhwSbXQ==
         "]]},
       Annotation[#, 
        "Charting`Private`Tag$1230636#4"]& ], {}}, {{}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}}}, {}}, 
   InsetBox["\<\"\[LowerLeftArrow] \\!\\(\\*OverscriptBox[\\(\[ScriptC]\\), \
\\(_\\)]\\)(\[ScriptM])\"\>", {0.2, 0.484313725490196}, {0, -1}], 
   InsetBox["\<\"\[ScriptC](\[ScriptM])=\[ScriptM]\[RightArrow]\"\>", \
{1.8, 1.8}, {1, 0}], 
   InsetBox["\<\"\\!\\(\\*SubscriptBox[\\(\[DoubleStruckCapitalE]\\), \
\\(t\\)]\\)[\[CapitalDelta] \\!\\(\\*SubscriptBox[\\(\[ScriptM]\\), \\(t + \
1\\)]\\)]=0 \[LowerRightArrow]\"\>", {0.8, 0.9902448700145461}, {1, -1}], 
   InsetBox["\<\"\\!\\(\\*OverscriptBox[\\(\[ScriptC]\\), \\(\
\[EmptySmallCircle]\\)]\\)(\[ScriptM]) \[LowerRightArrow]\"\>", \
{1.6, 0.511764705882353}, {1, -1}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"\[ScriptC]\"", TraditionalForm]},
  AxesOrigin->{Automatic, Automatic},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208860865641*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"b675ed12-9e2a-4cb0-94b9-b07e1306b23f"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{R,\[Beta],\[CapitalGamma],\[Rho]}=\"\>", "\[InvisibleSpace]", 
   
   RowBox[{"{", 
    RowBox[{"1.04`", ",", "0.9803921568627451`", ",", "1.02`", ",", "2"}], 
    "}"}]}],
  SequenceForm[
  "{R,\[Beta],\[CapitalGamma],\[Rho]}=", {1.04, 0.9803921568627451, 1.02, 2}],
  
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886090942*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"beb9cb89-f6eb-49fb-9846-43d0d430651e"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{\[CapitalThorn]=(R\\!\\(\\*SuperscriptBox[\\()\\), \
\\(1/\[Rho]\\)]\\) \\!\\(\\*SuperscriptBox[\\(\[Beta]\\), \\(1/\[Rho]\\)]\\) \
, \[CapitalGamma] , (R)}=\"\>", "\[InvisibleSpace]", 
   RowBox[{"{", 
    RowBox[{"1.0097563285948026`", ",", "1.02`", ",", "1.04`"}], "}"}]}],
  SequenceForm[
  "{\[CapitalThorn]=(R\!\(\*SuperscriptBox[\()\), \(1/\[Rho]\)]\) \
\!\(\*SuperscriptBox[\(\[Beta]\), \(1/\[Rho]\)]\) , \[CapitalGamma] , (R)}=", \
{1.0097563285948026`, 1.02, 1.04}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208860944705*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"2b47d8d0-cd5d-4910-bca8-028449bb80e0"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"\[CapitalThorn] < \[CapitalGamma] < R:\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm["\[CapitalThorn] < \[CapitalGamma] < R:", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088609935627`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"dbf99cd3-e1f6-460a-961e-1f88299e2470"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-GIC Holds (\[CapitalThorn] < \[CapitalGamma]):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm["PF-GIC Holds (\[CapitalThorn] < \[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861021298*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"4d9a9040-ae9a-4988-a180-ebf0e5387029"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"RIC holds (\[CapitalThorn] < R):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["RIC holds (\[CapitalThorn] < R):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861056521*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"8894de54-83e0-45e4-b6e6-03f088ecf101"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"FHWC holds (\[CapitalGamma] < R):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["FHWC holds (\[CapitalGamma] < R):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861086917*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"ee901539-cbe5-432d-96c4-5f91ae354bdf"],

Cell[BoxData[
 GraphicsBox[{{{{{}, {}, 
      TagBox[
       {RGBColor[1, 0, 0], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJwV0Hs01HkYBnBkt4tMRDFKRWxKs5ySROuRcsmgQzZdhNwqKmrUdj1WzViV
SrvWkpQaKcmlXLZdLGlqSzHVKBSjNCGG75d1yVh++9s/3vOczz/veZ/XJCTa
N1xDTU3Nm53/0yO862X153DHakeDaOFMAs21RjFt3HUImi75I5f18qtpl4u5
fphojtGUsubXNd7L5IbB4WBtOlePwD9spPJnbixK805ICli3Wv209hxXiNuG
Cm6zPkHWrA0JZ7gp+GWgSMIzIIifUrzoNDcb4TkeRo1zCDZvuVZI+0vA99yX
MGBOoMXEB7jNq8K27JpjIVYE5j59XQ/PSuDe2jJdbEfwQ/0qpA0+xSG/zsA7
zgQGJbpydXUp6k6Y2k/zJChrX/tcuvoVIj55vbHeRFATmTlni7IB73jgWAQT
DH3z3Yz8vY04arFDKthNoDGapzPH/C227hD4JAoIbJngso0FLQjzLAvoP07w
XGhT/3hJG/iGVZMsEwjmJ/eM5va9h8D0fhQvmaBnpE3+2rodj+QfAoTpBNnd
5bWc8x+xuXmMky0m4BjfJAqFAn+XvAtIySdI2l0akWXWgWBn5fLmMoJhpzzF
rrhO2HN6n3VUE8Quk5TMftgFJM3rda8laCuQnH1p0g2hu5NU0EAwFtmQsfho
D3I+LfKKlhNYrpk8EVGuxICNk19VJ4HbdZOddw36EFfjPrepn/2XcZDphwCC
lRon97qMESxVfq/V6EURftEpf40Ghd4MOkWiopA62Wm6TKbQrMooXHi5HxvW
P7k6oEURZVPePJU/gL6YFxmauhR560Oy/hoewHhi+aeJWRRDPUY6Han/YIHK
MVZsRFG60W1SyrpBhJ6xD70znyLOXXS1pGMQFYL61CAzCpNWjyaxaAinvFwM
xywo7FcKU7jLhhHpaqNS8SgC5klH1WXD2JlWvuDGMnZ/7bn2mPgRCKeW3yxe
SZGmGRjra/YFZTJfwZ7VFJ0RdfaVMV+gfdj2otiR7SMvva4h+YJN5+uStNdQ
fHUi3m/V/lHM3lX9tZ4rhVpuYGH7TBWUl/iPajwoDlwqPDezRoV2pbfizQaK
SsvEKbr7xuBmtcJH5keh63Fg6UnOv6iuLdY4uoWihfdCdqTiX2wV3dYXBVIU
XYGZInAc09JXRdmHUmwvtNU1nhjHosy8GU07KX4UXYtvuT2B8Opf9d/uocjv
Ms7geDL4fbVhYMJ+isRMUbDcm4Fb/gOHDNZhvr3mBT4MGo2juEWs51ZUFHn5
MxieqGxoZn3mwrbHSSEMbB6E8nkHKHbZpvdPO8LgnkuhXQNrU6G+++QcBne8
XfVMYykm7I5rN95i4FBFqC3r5t6Pr3LyGDyzSq/ns072L97uepdBt47y9EHW
zBJfgaiCwWLZRbWnrFteXrgyScYgx7+1N/ogxf2EkVDZawYrniQ8E7JOcQha
LG5i8MjOOjedNf/GtyXOcgYK7qmwh6z/PFz3NP4zg4UtFu9mH6JI5a244KNk
7/V8dd+S9f72y34mhIFz5bFUJ9YWnnvaqgcZ7LhS7xPJWlO9ITt5hEE/57BV
HOv3pQ6RwSoG8XEm2imsKyLFVtbjDHRobfct1r/N1xpiGAZZwbFPKln/Bx7y
g+s=
         "]]},
       Annotation[#, "Charting`Private`Tag$1230696#1"]& ], 
      TagBox[
       {RGBColor[0, 1, 0], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJxFxW0w03EcAPCNdZRrGpX707iJylOcpFCpuMhTZ3RyeTohrSfkTro6rdsk
D3HdTsrzQ0o7RjbXZeLYueM8xLjRsWl2jM1TmTWyVS98fy8+96HE36cm6uFw
uJB//h+QKB/pWkg8tzPBxzxFgvl673yisqSsFQuHAwdFn8qxBDgiQd3xCkuH
p52f+xRgDLjqwJXsXIwF0w1bj77A6uBrkdWc1TUubKSjR/lZdsK2ocvynjwB
nDHk4V2y3gebcUliPH4YbpP6DAyfGYW7aeUWkcoxWHXkrHHjXRGsp2Hvs7D9
Drvr4trCmqbgAYbbUK+9BLYqUmgalmdghVoiHneRwnWL7f3El7Mwkfx+RSaT
wfm3eElVNnPwxnm2LDlrHk53FXAP9shhSZMgb4SyCG/RxkrtHilghwsG2qR2
JexXQ7nZYrYMZ5BjrX9ErcCOyqtGouBV2NR41VCwiSZ0lnIOl63Bt93aJ3cH
/oTZl+Orvm6gVQrzfXPFv2BemJ8+y3cdzvJnVnLn0JTpgIlapgr2PMVgYa4b
cJTlsAYvRKv6C6QpdDVcQohJp9r8hueTBj07UtCmYl6NngC96wk93CNVA+Ma
YjhSk0047S2nwKQb3eGQY0i6twWTAtIcnxH/wFNO34SZfHRzhbeNLGYbjua4
k8ha9FNmNX3qoxZulJNLiUE6OKecGScOQSdQl2ybQtGH+Pzm4Ah0buH13vx4
dLL7m7U9mWhrxn5/g3q09vTjvaIP6Mml2dF6NrooojX6UgtaZ099wOSjp0YK
K/SF6M/Z6hvCcTTLK9audgId+O4496IY/eXhYB99AV3sdLIwVIlOlZaFU1bQ
x4LuSLrW0QT8WF2RGj3D86LFbaL5tFpnl230aysjlU6H/gsB2I1U
         "]]},
       Annotation[#, "Charting`Private`Tag$1230696#2"]& ], 
      TagBox[
       {RGBColor[0, 0, 1], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJwt0Hs0lHkcBnAyu1EnRRdNSIpC2jpI0dazxUZUIqpZtzmS0I04RTfNrpGK
bU7JSkRhZG1MZbohqslGqQyOy2Eml2WKjPv7GzLvvnvO/vE9z/n885zzfE2D
jnkdmKahobGTuf/S7YCirvLzgU0dHKlPzTMKLKdFEXK2MzgaJjPaGdtmpWU8
ZHvjo/DQcyVj99qmB5nsYFSMsFbML6WwN5gqv8qORmbyOhLIuH31Badkdjw4
LzLSxxhnz/dIuMROQZ3FQfmScgo87YcrLrJzUUlNhp6soLCPc7t4cKgE1+wt
V12UUJhJ8/xcFlfAOG/ZkHM1BXPPAcWryxIYhU0pFbUUTr53QNpoNea8b80a
klIwKNGTaWp+QFkQ3yO3icKjTqd3H36Uwi/NVlTaRuFleKYhp78BUcteuJd2
UBhbvnH2vSNNgMywN7iHwjRV4RxD81ZoOp6yjeqjYE9zH+0uakPs67y4lYMU
3sXbva+ykiNUKPr+3SgFE0GfqmDgE9wsKjbVqSj0UXJZ45pO/NOSfuK8mkLu
l9Ia3d+7EG19KjBFi0DXOF/Z3d2NmIb1vwm0CZLCxCHZZj2w/UsitJ9FMP5T
YXdoXC+6zbxPb9YniLaRlCx4pWD+LPIYX0AgL5JcrjP9AuECvcbZRgST4Q03
LU/1IUa867qeKcHKzdPVIaX90Iz39yk3J3C5Y3rwvsEAzo0cqaq1IjhpHLi0
w0+JB1fd1yWuJrDu95nZtGMQvhe0u6zsCObOHtSWTAxi0qgaNg4ErIqbxcsy
hrCrc09G10aCQ3alLTruw0h3VRSothAUbgvKfj4+jF9YnGHKhWCsb9GcntQR
SJWpjtnbCcS7XbRSnEex6Uyz7T1PgjhXflZJzyi463utg/cQmLa7Nefwx6Da
1sjV8iVwXBefwrYZR8K3qp+ncwn8Fn9QadaPo0bGtxIHM/01yZ0RPApaQa6V
f4cRpLECor3MCEbmNfvEHyXoDal1LI8gUPyfc2XiO9MkBBxjl+WWUQTfneV5
O0Sq8KDqab5NDIFGQUBxp/4EJFkqi54zBMfTi5P1X06ghr3RV80jKF+ZqK13
dBJbPwe+UScQ6Lkdt/5V9xtiFR5rCy4TtK36WB9b9g3ZiU67nwgIRLdg1h0w
hXP7WJGR1wn8i+31jNVTkJ7NrdZPJzjPv81r+1MNQ2fX+oVZBPcUxjd1t9Mw
dHza9iaHIDGTz5XtpKE/uuRtO+Ngr6/mRZ40dIoSnw4zNiorE+3YS4My3Zdq
lEtw6YpvVVIQjXodyiOCcaj9jaEZsTSSWuxeGeQRLI2f5zpdSEMdIyoIERKo
15+Z1XSXxpjNwrTTjFu+dkmFhTT6++MSBIwFex/6b71Po5Xrsf8ZY9rKK4pf
RuOx64CRbj6zt+7KLa16GscWWgvEjJ8kUPvrG2kclF47V8M4ZUOgZU4zjYCk
ycNyxu55P5RskdFw13i7TecuwbOY2mreZxoWijAtf8apq9Ze8eynYXKnbiiS
cWRnhrepkoaBn8OnBMYW2w/LK0dpsD5ql4sYszQbcgUUjcmLEYWvGX8Sbwjn
TtAYcWq+0cq4LDxn9ZopGl+mkKhk/IfJzDGaptHxOP8Eq4DgX3FLmo4=
         "]]},
       Annotation[#, "Charting`Private`Tag$1230696#3"]& ], 
      TagBox[
       {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
        LineBox[CompressedData["
1:eJxFxWlIkwEYAODNRhqCM7Lk07RWamqRR9YyvGLS5pWoWWrLxJxXWUKG4o9k
5lF5IGuGpKaVELnUalMWwxluaIlHXizDubThNZnz2KYztPrh+/54eGjJ96I5
ZiQSifXP/0M588NfFjgBu1MYdtkqIjhw9zMNNXVC4gocNqD4VE+kwNdSjJ08
IgdWepQyKogiuPFgZMlTgg9zLYQnnhBNcFz8qzbdigi23OGymY5dsHOUdl5W
JodzB30Da9a/wbai/VNk8hDcMcPoH/Ibgbsz6+3jl8ZgvYs/tSVLAZttCqzt
nX/C53aSOmJaJ+H+Ip/BHncVfKRKs/lO+wvWGFVT454zcNOipM+q8jds5fB2
Wa1Ww+UZ7amNTrOwIUigTi+Yg3O85aJDsnlY1SovG6YtwluZY7Vu+Rr45EXz
7VTJEsx8TUv7aKuFcx1uHptmL8OnlmItFRE6+ABVZyE34ZSu2rbjdSvwbR/J
xL6wVVgQktwoNeB6jZ317PM1uD2GuYcfvA4XsIobRLM4TRn6402xHr5AL+IT
3gaY7Ti0SR7F9X0VM9lcIzxpOZ7+5xHeHX54ubQErxps3npZhruP9NoMVOOJ
E2SmWzPeM/dAMD2Cv3ft9Moax59lUMQbCjxJw5NTlbhJ26b0n8M9DAvUF1t4
DSUxJ9ppA96+ZXt22AVPkX3XR7rhnoWM3IjT+Ncd13zWedxoWisICMfZCS1B
nZfx7s+pZL8ovDJvotD3Kr6u4DHEcXgCPZxCv467GKTFPkl4eWzeJWEyviry
Mvfm4HE2mt4Pabj0ftNjj0zcafRGSOsdfC9X/PDoXfwvpvxYrA==
         "]], 
        LineBox[CompressedData["
1:eJwV0WlIE2AYB/DlQd6wFWbp0EXGTK2QlEzkgbS0WtlMcmEeaImpqJsZW6m1
yjFr6aLyPsp5LZsujzyYEaXmlEJdh4qpmaTGVBRtr87t7e3Dw5/fl+fhz8OI
TQ29akKhUDzI/M9+1szfS+kIWmgBiqE0BHuVWzZMAYIE6pNZPfFSSmqeazaC
V7n21gwughxt2GMXMQKvm3ROEnHrnHOhfRkCiHBfxcQ7JtuqTHoQcOhB+93I
3jybrKz2PgSGORbLn9jKL5CTrEYgaw7lsYlNikZsv30md4Ki3gqIV9nLfPkY
gnu8jIsDxEO9zJDzywiaPspESdcRSBSl+vI9G2DOo8wpMhCYZwnDfLkb0NzX
WefFR0CRRzXN0Dahp3KD+TsTAa+k6RHt/Saod/tHGIUIut3FFtQUPZxYiO43
ihBQT/M87tptAX8+xFv+EMGE55BGoNqC5+KACx1SBMoK2DcbZYBsjhmX+wxB
ZJMPlW40wEhWtZpWguBOzgvhxEsjOAYGaxwqESjm6aV2LAyOxzon+mUIxOU5
MZPnMNDWXAZ/EF8JXXRtZGOwbBR3rhI7qVTKs+EYdAxOgVM1ggf5EX2SWAwa
S11IGnGCT/GKlQCDZOzIh1015D/3dwZvr8Vg5Cvl8bUIjEczbb/XY1j3cii6
RTy2+GuktgGDVntbJCWWhrdEnnyNYTwmJK6LGB8ITc9RYXgTvORkV0f6DudX
mGowpDp4SNuIO0S6OM1XDPEjT7IHiJ/6RbvJRjFESvTJU8Rnag62Hp/EwKIM
nrKsR9DF/6QWLmBgzl8zjSQu8PTOZ2sxOFcNr3CJuTNlYYxlDPaXfadFxExW
8tS7NQxmQxbdSmKzbV+qpToM+ty0hl7i6Ta/xJhNDKsBo8XjxKpE2aHDBgx/
DCBeJi50tl7HGMPP9robZnIE/wAqLH7z
         "]]},
       Annotation[#, 
        "Charting`Private`Tag$1230696#4"]& ], {}}, {{}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}}}, {}}, 
   InsetBox["\<\"\[LowerLeftArrow] \\!\\(\\*OverscriptBox[\\(\[ScriptC]\\), \
\\(_\\)]\\)(\[ScriptM])\"\>", {0.2, 1.4889192076404891}, {0, -1}], 
   InsetBox["\<\"\[ScriptC](\[ScriptM])=\[ScriptM]\[RightArrow]\"\>", \
{1.8, 1.8}, {1, 0}], 
   InsetBox["\<\"\\!\\(\\*SubscriptBox[\\(\[DoubleStruckCapitalE]\\), \
\\(t\\)]\\)[\[CapitalDelta] \\!\\(\\*SubscriptBox[\\(\[ScriptM]\\), \\(t + \
1\\)]\\)]=0 \[LowerRightArrow]\"\>", {0.8, 0.9942020827738753}, {1, -1}], 
   InsetBox["\<\"\\!\\(\\*OverscriptBox[\\(\[ScriptC]\\), \\(\
\[EmptySmallCircle]\\)]\\)(\[ScriptM]) \[LowerRightArrow]\"\>", {1.9, 1.5383559782066774},
     {1, -1}]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"\[ScriptC]\"", TraditionalForm]},
  AxesOrigin->{Automatic, Automatic},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088611865177`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"de2f17ac-cf63-476f-90b0-bff6b9571971"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{R,\[Beta],\[CapitalGamma],\[Rho]}=\"\>", "\[InvisibleSpace]", 
   
   RowBox[{"{", 
    RowBox[{"1.01`", ",", "0.97`", ",", "1.02`", ",", "2"}], "}"}]}],
  SequenceForm["{R,\[Beta],\[CapitalGamma],\[Rho]}=", {1.01, 0.97, 1.02, 2}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088612369547`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"0a27e499-d8e2-414a-8e8e-891834d11d6f"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"\[CapitalThorn]=(R\\!\\(\\*SuperscriptBox[\\()\\), \\(1/\[Rho]\
\\)]\\) \\!\\(\\*SuperscriptBox[\\(\[Beta]\\), \\(1/\[Rho]\\)]\\)=\"\>", 
   "\[InvisibleSpace]", "0.9897979591815694`"}],
  SequenceForm[
  "\[CapitalThorn]=(R\!\(\*SuperscriptBox[\()\), \(1/\[Rho]\)]\) \
\!\(\*SuperscriptBox[\(\[Beta]\), \(1/\[Rho]\)]\)=", 0.9897979591815694],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861265847*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"542c3a6b-d7d0-44a0-ba47-339cfe943380"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-GIC holds (\[CapitalThorn] < \[CapitalGamma]):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm["PF-GIC holds (\[CapitalThorn] < \[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861297365*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"0f2e48f6-57ae-48c7-ae69-8c8cf5db7e92"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"RIC holds (\[CapitalThorn] < R):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["RIC holds (\[CapitalThorn] < R):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861324539*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"6fe2b877-58a7-488c-9e42-fc779488499e"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"FHWC fails (R < \[CapitalGamma]):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["FHWC fails (R < \[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861350099*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"99d51f1f-013f-43f1-880a-c9e7bc3fde21"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-FVAC holds \[CapitalThorn]/\[CapitalGamma] < (R/\
\[CapitalGamma]\\!\\(\\*SuperscriptBox[\\()\\), \\(1/\[Rho]\\)]\\):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm[
  "PF-FVAC holds \[CapitalThorn]/\[CapitalGamma] < \
(R/\[CapitalGamma]\!\(\*SuperscriptBox[\()\), \(1/\[Rho]\)]\):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861379485*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"b6b50591-d7dd-4e33-bcbc-6dcd3a3559ec"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
      LineBox[CompressedData["
1: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
teK/toT/DyZG7Wk=
       "]]},
     Annotation[#, "Charting`Private`Tag$1230839#1"]& ], 
    TagBox[
     {RGBColor[0.880722, 0.611041, 0.142051], Thickness[Medium], Opacity[1.], 
      LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQXb4s6GTtbwlHhb8dDzOqp9g3JBp/iIy1h/M38nCa
v7L1gfMjPbt1l+6JhvOz1jBdXm2ZAudfjLP/L1GaBecnPGo+dX92AZxf9oJl
ffHhYjg/4IS3xxK9coT9tZNu3uusgvPPsZaxRK2uhfM/bOb/ZNHRAOd3nNuk
91S2Cc4/fTk0fdrqZjj//dHoX6LRrXD+YkWDW1vftsH5llnpIiqLOuD8yrnz
vKb7dcH5HlZLzmrd64bzfx7mWd3T34vQv935Kp9KP5y/7vS7Nfq5E+B8kY3W
uVEuE+F8x9Pvg0V5J8H596Ovpm9/huC7KioterlxMpzPcCcvSq5yCpyvw/vW
3ipwKpyvUHzJ+5nUNDi/1f9lS+VXBN9ekcGG/8x0OP+gep2k6ZQZcP6WJboq
Trkz4fy8MJfQ++az4Py6v1Es9f8Q/P9Six+wXpsN57vnBj2WmT8H4V4zY2Hp
yrlwfqNxdeZKl3lwfrjaYVsrnvlw/rx+G/tNTxD8a9P6jGPDF8D5YgvF7105
guAzLFtw3NdgIZzv5xp7pG8Kgn91/qZwZ8ZFcP7+Kdb/9qch+CEtRx7bnkLw
lfSfxeubLYbzg0us37+YheAnrUtXVbyM4Be9mBwdyb0EzgcApE2bdg==
       "]]},
     Annotation[#, "Charting`Private`Tag$1230839#2"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{Automatic, Automatic},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088615769863`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"8f66aeb6-7a10-4bca-b72c-c37d841954f4"],

Cell[BoxData["\<\"Example where PF-GIC holds, FHWC fails, RIC fails, PF-FVAC \
Fails\"\>"], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088616116943`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"d627760e-e245-4ffb-8c85-6b39b1d62e84"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{R,\[Beta],\[CapitalGamma],\[Rho]}=\"\>", "\[InvisibleSpace]", 
   
   RowBox[{"{", 
    RowBox[{"0.98`", ",", "0.99`", ",", "1.`", ",", "2"}], "}"}]}],
  SequenceForm["{R,\[Beta],\[CapitalGamma],\[Rho]}=", {0.98, 0.99, 1., 2}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886164187*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"6a5cdfd4-477e-460a-b564-2fe1f47c1a9c"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{R,\[Beta],\[CapitalGamma],\[Rho]}=\"\>", "\[InvisibleSpace]", 
   
   RowBox[{"{", 
    RowBox[{"0.98`", ",", "1.`", ",", "0.99`", ",", "2"}], "}"}]}],
  SequenceForm["{R,\[Beta],\[CapitalGamma],\[Rho]}=", {0.98, 1., 0.99, 2}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088616707163`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"8285d7e1-4c57-48b4-8512-51dd9acfdc4b"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{\[CapitalThorn]=(R\\!\\(\\*SuperscriptBox[\\()\\), \
\\(1/\[Rho]\\)]\\) \\!\\(\\*SuperscriptBox[\\(\[Beta]\\), \\(1/\[Rho]\\)]\\) \
, \[CapitalGamma] , (R)}=\"\>", "\[InvisibleSpace]", 
   RowBox[{"{", 
    RowBox[{"0.9899494936611666`", ",", "0.99`", ",", "0.98`"}], "}"}]}],
  SequenceForm[
  "{\[CapitalThorn]=(R\!\(\*SuperscriptBox[\()\), \(1/\[Rho]\)]\) \
\!\(\*SuperscriptBox[\(\[Beta]\), \(1/\[Rho]\)]\) , \[CapitalGamma] , (R)}=", \
{0.9899494936611666, 0.99, 0.98}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861698513*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"14d25b02-7543-4f77-9a36-54e1e6b3ffcf"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-GIC holds (\[CapitalThorn] < \[CapitalGamma]):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm["PF-GIC holds (\[CapitalThorn] < \[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088617288923`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"cc0f8bbb-0863-4653-b7e2-3637d380ad03"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"RIC fails (R < \[CapitalThorn]):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["RIC fails (R < \[CapitalThorn]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886175937*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"4f241c2f-f302-41c0-8ac3-5d514ce28d9f"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"FHWC fails (R < \[CapitalGamma]):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["FHWC fails (R < \[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208861791541*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"bfdb76f0-87e3-48ee-9f1f-a2dc2aeffd16"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-FVAC fails \
(R/\[CapitalGamma]\\!\\(\\*SuperscriptBox[\\()\\), \\(1/\[Rho]\\)]\\) < \
\[CapitalThorn]/\[CapitalGamma] (same as 1 < \[Beta] \\!\\(\\*SuperscriptBox[\
\\(\[CapitalGamma]\\), \\(1 - \[Rho]\\)]\\)):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm[
  "PF-FVAC fails (R/\[CapitalGamma]\!\(\*SuperscriptBox[\()\), \
\(1/\[Rho]\)]\) < \[CapitalThorn]/\[CapitalGamma] (same as 1 < \[Beta] \
\!\(\*SuperscriptBox[\(\[CapitalGamma]\), \(1 - \[Rho]\)]\)):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886182045*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"2aa80781-740d-498f-8122-80905d017bfe"],

Cell[BoxData[
 GraphicsBox[{{{}, {
     {GrayLevel[0], PointSize[0.007333333333333334], AbsoluteThickness[1.6], 
      StyleBox[PointBox[CompressedData["
1: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
        "]],
       FontSize->14]}, {
      {GrayLevel[0], PointSize[0.007333333333333334], AbsoluteThickness[1.6], 
       
       StyleBox[{},
        FontSize->14]}, {}}, {
      {GrayLevel[0], PointSize[0.007333333333333334], AbsoluteThickness[1.6], 
       
       StyleBox[{},
        FontSize->14]}, {}}}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJwV02k01VsbAPBzQ+Z5jpu/rikRiYM4nm26VBdlyI2EdJqOCrE0eJExw01E
ohsiiQZKHErGKIRDpWTohCjCpjolqbvfD3s967fW8+GZtvqeo67MFTQaLZa8
/0cdmvyAFZVo9aNlwy4aDYPNeouCCjoTIl45Oi7+hkEp4qFvDD0MJLgawpwV
GCT9fY7e7I2Cao73ZAgfBr6iSGDR42EmR2fqO3FklrMDLS4Zdh7UaQ3mx/A9
cbVLVm8aDIx4hAwRb2KEr8tKywB7m4gJhgCG43Tfcl96FiTEXpO4SFxt4LBR
dzgbBuXB+iPxZx0D9ufYXKi8lhRusRLDUZVf9Um9+WD34WFVF/GO5GPqupZX
QPT41xZpQQxfEvYHpKUVQu94DM+VeGO0y+ROejHsPbl+oYu4L8J2bUPSNSg/
9NVISAhD0AlTlsZwCcxUrk9FxLdD1OZmY8ugZdRF4yaxLnOOF9tbDgqf/cxD
hDGMVwT/G5pRAa+uV9YUEBuXsxjalnegtoOh003cd8M3KjXtLnTW/S2vJYJB
qtiBz5NeBUHnS/7pJPYrsr4qzK2CgGMltE/E5Vcs7OuSquF12P4mZVEMznkG
ierDbHCXstnKJE7NVhT9GHsfpv0OML4QCyZPypzubYBodqr1shiGdY/wQA6j
EfwfHPFUFcfg1nJY91hGI0wfeCxqQVzYtL9T07IJruML3uHE1vXe4ilpzfDB
RnN0mjiKbZvuQW+FH5lhp9skMJwzU+Ztz2iFQkN2zyhxQe2sl/NsK4xLtz/7
Sdz4IEfD4VobyPz1gJ8uiYHWOMc2U3gCGuOB5leIY55cGlHhdYCsobFZoBSG
lo+L8vNeHLjACUwYksbw1629jnNnOOBhNqK2QPz8cM/JmWoOMEU+ZwjKkPnO
Xn3zQaYXUG2WkBEx/7xL6WhHL5wtjrGJJ7b7Umz5fNMz8NxnytKUxdC2vD2A
vaoffDPsmlzkMNx9o+9eat8PbSfnvf2I85qE7S8F9YO5efbbIOLw+CatqLZ+
MHF/fDudWEd8w9SfIS/hJWubZx9xsqpUcH/7KzgaCDLb5Mk+LLojvxwfBLcN
YUlWChhYlppdOSwubHVLEsCKpP/ZQ/PXorkgaVcU+4P4Qn6F/L0sLiQwB3lC
ShiaV1ju7m7gAi1guU6dWKnddW6F3FsQdvTucCV+5BEtHVj3Fg6tQ0t3iVWP
DnpYiY/BxECeaaAyhq4r6SOjt99BpI5/cusqDEPHZh7XtL6DXBW1Gg7xR/vN
d84OvYO49wXDg8RiU7S4TSITsI+nJbVAvMUoaG0GcwJ2bq2SW62C4Umzc6i1
6iTcn9IrCSVuHhMVKUh6D9p6OfaqqhjYmgkmPnun4dmz6ArP3zHIslxuae/C
gJfeLRxUw3C2L3+POXyCBy9s3ZjqGHhO7zM4cjzYdEV/es0f5F7e2JQV1X4D
zlc1tcsaJD/af29a9hI4xyQ/lNfCUG+aIcC2+wmej/TnvLQxHDk9LGUUQkNX
i8by43Qw5M+64cyR31CpQYh+5VoM8/vcWrKM+ND2Q6vv1elieDdxb3JNET9i
M24ceboOQ09QRvuC2EpkUqte/0QPw2uBxTy/3YLoxWa5uOv6GBILm1q9ngoh
7/GG8bT1GDy2yHIX1EXQjrH9JrsNMLQutm1VzBRF6Zu3mxgbYtCr5IVG/hJD
n7g/TywT3wsvT491lUBCJzi/7mzAMGLb8UuuWRJtS80NOWKEIVOcbViYKoUu
+uRIK23EYPLzTzRoLI1umNQP1BCXLCQe95qWRp32zER/Ywylgf+UXc+SQSlf
bScWiSOmbAUYzrIov5/vfY4Jhq2Ha+pD+OSQUMAdNSM6hrKw+eDwm3KIcTOC
v4749elBp+YAeVT/ydvHyRRDrmzyH0MSCiiyht+9l3hHGc8zu1oBpStQ+1zM
MIzZyVVdDFREHorfK58T05g80YMKSqiEscBzMscweyYpJapbCUVvqTDqJj5s
9JafeVIZRafel7TdhGGSyxuaXrMKKTqdk6okNjr/cLhmYBX6Vny/Z60FBvFO
x1fucSoopGZG/wJx7cr4JTpDFa0TkZYQtsTg7xD1v/sLqkja59KucOIccatF
sX9/R8UuWGOIuPDlrcvFbqtRsS6L7sDAYKk9aiH+azXKtBzRLyXuPfXcTKFE
Da2Y1TwsaEX+x5RF+d31FJqxLm5gESsOzNU3xVIoUUsv7zHxT8NPqYx4ChXz
rhu3E4+f4XnVJlBo4oRAZwfxXbNlXkUShUZv+3ztIna+KGJQkEYh2r4U5+fE
cZ6a+ZGXKOSex+VxifELryiLSgpdzb9g8J34pf5uJ/Y9ChVi2eYl4vp4f5WN
1RR6kxvsvkycYnKArVtLoTTJ7uM0wKCVFTan3EChUCGxxpXEPu7nfL91UMiw
rMBRltju5nn90KcUyp3XHJAj1uXPXprrolDgWMpBBeJvlZezJzkUCnq9mKRM
nCl7o6e/n0KnCne3qxGfYt2+7PqKQj3tH/5WJ97TcofVPUChGy0e79cQGxyr
EWwbohC24azUIlbofPDCeoT01zeSpU38Y01D0cM3pB7Hbo21xGMnm4PN31Io
qjSvUpe4o68VqkYpZLrkYqNH/B9aGet7
        "]]},
      Annotation[#, "Charting`Private`Tag$1230925#1"]& ]}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[ScriptM]\"", TraditionalForm], 
    FormBox["\"\[ScriptC]\"", TraditionalForm]},
  AxesOrigin->{0, 0.9991431628796537},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 8.442789243287962}, {0.9991431628796537, 1.01542306816624}},
  
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088620269957`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"edabb707-ea97-458b-a874-e7a95fc613c0"],

Cell[BoxData["\<\"Exporting:../../../../Figures/PFGICHoldsFHWCFailsRICFails\"\
\>"], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208862066317*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"23a57249-9a21-4d1a-b928-919a63ca3a65"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJwVkHc81/kDx0U6WSGjpPpcRoifyqWMvN5EdllXOl+J7E3mEU5ORjoNIxXp
LpUyUlZflJGGECLZI3v72vLt7vfH8/F8PP99/mzraWrPysLC8td//N+kLaaO
q/YLSr5O7a3KCACfRoByKuML8iOvZ269HIDex3YPpMXakKWgJGnnFoDwYFzU
dm9D0raLUTLKAajYtSAXtuUr2MxYPhZ89oem/bkrc2btOB96RVJPxB8C9UbL
4SHtIIMdolos/uhXUrXb8qAdYob7+DDqh0scwmpyi+2w22wn3lPmh+onteP2
KR2QsYhRL3b0g/acksHXzk44xzt0BVb7QthSosiRvQv1vMWT0Xm+GKriF1+U
78IvCZuZKXd8EZU4sSoQ1gX5svlozgBf1By5n2X4cze23Nl3QFHOF7phPJyv
7Xswp3rrzcu7FyC5ycfObKkXhlPJr+7f8oFw50XNkzx9aDQyv5YT7QOO/BjK
QLwPeYL55h5BPhizyujUPNmH9JITc5kWPsgp+GR+8GEfrhx1d3u23QeH7RW0
+U/340+o5HlkeEOvekKyoXAASWE2j/iqvaCSusxW+3EAZzJ35iwVeUHOa2N/
Tf8AnjspPlnK8gKvmFhaOe83OE+efbCU4IWmCwbCOQ7f8IJhG6hk7QVL8axN
8cKD0FbJaJhjesI9wnFY338Iy5xW8uupHngk4dPUGDsE/jMTrXNRHuivCSmz
SB/CvofB4SM+HjjFdf2Gw7shsOXKqh8z8oD6zVJEiA5j8p6Z6c0f7uDN5E8p
KR/GaEf294Pu7sh7T9eV/mkUaYWTby9ZuGHMtUYxd8coKpykVnp13CDB27hL
af8oBkWtZdUPuyHFdGj+2JlRyId9urIs5IbwDr4M6yejuHhSqly11RUmk/Yr
SSfHcEa192OThSvm+Piy2FPGEWDf0DPi7oLY4/7hkk/HwRb3pnLA2gXiIZ2n
tF+P42oe/UG3iQvMhx+x/TkyjgdrD10/H3JBQZmG1UblCeRqfaiMZXFBoMsF
Prb2CYTH0dgWk5zxo6rVn0VsClwNEWfHGpyQsqJmRO2fQvJQrXRzlRP2K/wt
TrSmIM4UZNCLnHAu1fNTmNsU1OQfXo5Pd0KlF4fsj9IpzPt0RK97OSFqp0rX
utU0jKTYnfYI/df0+oz1kzMIMywoEHBwhIgjd9/wbzNIOHK40v43RzwS0Kea
7GdwX6KkvviEI947v0nLDJ7B7lv/i/t2xBHc20pvn3w4A14lPY5ILkdc932c
mMGcQbtw9NjwcwekyUfGaGfP4lK05xZ3XgcUpCt7x3MyMKh1T12oxw4uzxaV
ygQZ2Diiov1Pqx2oquffJ3YxsCeuxUCx3g6xQ/LRhooMpCcfDTYst8NZ+T3p
XDQGunXDRfzv2oGDzlkXk82A0eAL61tWdqC1dkhHGc/Dm22a0d5/Hmw8ob2h
SQtgZlsW2f+wRUiu9mp0xgKyo106eZdtsWjCI3jj6QJo54M2FM/YYizpjs7D
ygWUbEs24Oy3RSNFz2mYWkB40VbLyDe2SP9lOYTSWQSz7dqY9RVbqNJ8tlcu
LcLUs8+dlbLFhScOpuxnliEjp6nw4pQN7oh09nWcX8aZVEn+UmMbVF8y8c73
WEYsx2ZGlb4NhGlqCdaRyxj/1lDYrG6Dl9wC9SW5y3ijm/1ir7QNWD3K9Dw2
rWCNFiRxf/UcEvYLanx5vgL9rCl+ZsY5ZBdUKDzmXQNN/4hJ/qo12PUWn+Yk
rkNJMLJ/psUKr6Ick/6RYSHyL67r1LRaIi6bZO7x3kBkYxP9OA7/hqOcza4K
+azEbFaH26TBAuFhRflRvBvJLG0xKcT3NExLot9fNWMnfsVJOk2mp1DA9dSm
7/kmcjN/wU1R+Ves34jOreThIFElbtXuMMfnXpM6c+PNZK9sAPtFVzOoHXd3
O5DDSSLG+fa+TDGFopdfR/k8F4lTrv1LdNAE9PyG2qRTPIRu/iKJ44AJpPcN
eK8/4yUxtF1+/VeNIeE0MCy4uIUEfRt/RbEao6071ZOexUeusNsqyo6cwJCr
SnP1CX4yK/3qrdisEYZvFF5LnOYnz1af7d/Ka4T97zoSuNIEiKUpX+iqlCEq
zi4tfSVbiarqJ4qTZoDUDaXpRrNbSReravODeH04wOp+dJogeU+fPCRQr4eg
nnluMSJEOEaFuQOl9NASd6jYfFqIqL7pmCZBughMdasdvC5MTmsNbmDp0wGv
VriyuqIIqck0svMx1cHEitqIap8I6V3RVTn46jgEBGaY1y5tI26SzkJ/qB3H
H0qGp+IVtxO2w9vzTxdo43BZmlDfl+1kZ7+FhOxRbfR21yl8DxQlm4Mtg2M+
aqGROzO2dO8OspFyG5Sz0ALnXV+jlg87CIeQ8kfl6WOIU54wvhEsRj50R7jX
RRzDDy+Su01mJ2FemL7MEDsGOmec3+KHnaRlT2Ly1wpNvMoLDQn6fRc5KHLv
bb2tJrhKnMbNd+0mqdsKlWN5NKFHUyhYKt9NtgqV379UqoGRPxt60pUoMvWF
7ujgpIFPV1m3z1ymiM+7CtHXYhq4di9N3jKGIlkGZU3eOzRgmq+iWRNLkYH6
4lhxUQ00t/i43omniHlL7mqUiAZaxQbKdG9QRKn/bruRgAY6s6psM9IosrYW
lNrxkwaGayKfmhZQxJlV4GYyg+BRG1VRVkiRzlCRCOM5Aqex0hbpYooYr4l5
bZ4lGONZYDJfUuTQ/F7D4CmCCXN7kyevKcI6dHSj9SjBXL/2IttHitx67+wr
1UPwfL6P07OOItzHPW17ugh8N4Xubq+nSFilr3FKJ8GCTKFuXiNF7Olhcpzt
BMteUrdpXyhyIDvx2+RngpKIyty3bRT5W+Z2U2Yzwe83z1YfbKeIcOa919ZN
BGtFSZMcXRT5nvbkTmMDQen7g6y+3RTx3PEsNraeIKSjXrin578/yYWBx+oI
jk667NPvo8ivgqUO32sJmMxNpKCfIu8SKswLPhD8C/SjMWk=
       "]]},
     Annotation[#, "Charting`Private`Tag$1231143#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{Automatic, Automatic},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208863080888*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"cee4f39a-77dc-4e70-abcf-ccd34648f343"],

Cell[BoxData["\<\"Example where PF-GIC holds, FHWC fails, RIC fails, PF-FVAC \
holds\"\>"], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886311136*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"a13a8577-e23a-4e76-8f26-81c8671856ef"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{R,\[Beta],\[CapitalGamma],\[Rho]}=\"\>", "\[InvisibleSpace]", 
   
   RowBox[{"{", 
    RowBox[{"0.98`", ",", "0.99`", ",", "1.`", ",", "2"}], "}"}]}],
  SequenceForm["{R,\[Beta],\[CapitalGamma],\[Rho]}=", {0.98, 0.99, 1., 2}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886314116*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"56273811-7665-46b8-b55a-06bad86163c1"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"{\[CapitalThorn]=(R\\!\\(\\*SuperscriptBox[\\()\\), \
\\(1/\[Rho]\\)]\\) \\!\\(\\*SuperscriptBox[\\(\[Beta]\\), \\(1/\[Rho]\\)]\\) \
, \[CapitalGamma] , (R)}=\"\>", "\[InvisibleSpace]", 
   RowBox[{"{", 
    RowBox[{"0.9849873095629202`", ",", "1.`", ",", "0.98`"}], "}"}]}],
  SequenceForm[
  "{\[CapitalThorn]=(R\!\(\*SuperscriptBox[\()\), \(1/\[Rho]\)]\) \
\!\(\*SuperscriptBox[\(\[Beta]\), \(1/\[Rho]\)]\) , \[CapitalGamma] , (R)}=", \
{0.9849873095629202, 1., 0.98}],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208863172323*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"1cc957a5-c94a-41d9-8219-d9f359b76446"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-GIC holds (\[CapitalThorn] < \[CapitalGamma]):\"\>", 
   "\[InvisibleSpace]", "True"}],
  SequenceForm["PF-GIC holds (\[CapitalThorn] < \[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208863202692*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"7f4d5841-c340-4232-ad16-2ba14a467cb1"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"RIC fails (R < \[CapitalThorn]):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["RIC fails (R < \[CapitalThorn]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208863232684*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"4fbc934a-a7e5-41b5-90fb-926a85a02902"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"FHWC fails (R < \[CapitalGamma]):\"\>", "\[InvisibleSpace]", 
   "True"}],
  SequenceForm["FHWC fails (R < \[CapitalGamma]):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886326235*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"49d6e4b9-aa84-42cf-a4da-852a24f0eb6c"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"PF-FVAC holds  \[CapitalThorn]/\[CapitalGamma] < (R/\
\[CapitalGamma])^(1/\[Rho])):\"\>", "\[InvisibleSpace]", "True"}],
  SequenceForm[
  "PF-FVAC holds  \[CapitalThorn]/\[CapitalGamma] < (R/\[CapitalGamma])^(1/\
\[Rho])):", True],
  Editable->False]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088632979383`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"2671e226-c912-4d04-8f57-48a70a44fddb"],

Cell[BoxData["PFGICHoldsFHWCFailsRICPFVACHoldsFails"], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.7792088634557047`*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"bd6ad618-1fb1-40cf-9b9c-24e6f6b2caff"],

Cell[BoxData["\<\"Exporting:../../../../Figures/\
PFGICHoldsFHWCFailsRICPFVACHoldsFails\"\>"], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.779208863486724*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"3613c6bb-c7c9-4582-9693-71463ffff9c2"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1: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
       "]]},
     Annotation[#, "Charting`Private`Tag$1231424#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{Automatic, Automatic},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258170103285*^9, 3.779208716537936*^9, 
  3.77920886411299*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ImageCache->GraphicsData["CompressedBitmap", "\<\
eJzNXQmcU8X9D+zBJSJeiKKiCN6K4m2tRxUUwSKeSD1wdQWFqIhbPKJWV1HX
a70iul7rkb9H2hox1m5tU7tWY9nWWI1tbNM2trGxDTU0YtrG/v7z/c3My3vJ
e3lJ3Y2+z4eQzJvfb37zm9/M/K6ZnbtoxeLzly1asaRt0eRZyxddsnhJ22WT
Z168XBQ1DfN4hr0r/u0w2YPv5PHoD37ew4f68T9+n8b/NVF7ezupR75//iv0
vvT6q0TVULx/lL8207/+9S/K5XKUTqfp008/HWXLjJu4dFsqFov0ySefcOVE
IkFvv/02vf7669TX10cvvPACPf3009TT00P33HMPrVq1inw+H1122WW0ePFi
Ouuss+jkk0+m2bNn0xFHHEH77LMP7bnnnjRlyhSaMGECjRs3DgJHLS0tNH78
eNp0003pRz/6kWeUS0cu5q/T6d///jetW7eOPvzwQ/rNb35Da9eupZ/+9KcU
Dofp2Wefpccee4zpuvnmm5mu5cuX0wUXXEDf+ta36MQTT6SZM2fS1772NZo+
fTpNnTqVttlmG9pkk02YnuHDh9PGG2/MZTvttBPttddedPDBB9M3vvENmjt3
Lp1++ul07rnnktfrpW9/+9v0ne98h7q6uuj+++/ndtH+mjVr6Mc//jG9+eab
9O6771IymaSPPvqI1q9fT59//vlYl26ewV/3oM8++4w+/vhjBv/1r3/N7H/l
lVcoGAzS448/Tvfddx/dcsst3MVLL72UEYG8OXPm0JFHHkn7778/7brrrrTd
dtsxi0eOHEnNzc3cVXRv2rRptO+++9Jhhx1Gxx57LA/ZOeecQxdddBF1dHRw
12677Tby+/3U29vL7f7gBz9gOn75y1/Sb3/7Wx4CDIWQrWku3ZrJX3el//zn
P5TNZumPf/wjvfPOO4zu5Zdfpueee44l6s4776Trr7+eSViyZAmP2je/+U06
6qij6MADD6RddtmFJk2axN1oamqiESNG0Oabb06TJ082RuuYY47hkT7zzDMZ
x+WXX87duf322+mhhx5i6Q2FQvTqq69SNBql9957j+n5+9//jq54DnPpy378
dRoVCgUeog8++IAGBgZ41L///e8zuzA8N954I0sJaFi4cCGdcMIJPCPAdkje
lltuycOCfmAmYKj22GMP7sOsWbPo1FNPZWm7+OKL6eqrr2aJBl7g/973vodZ
Q2+99RbF43FKpVI8FIK/813In8Jfp/CKkMlkeIL/4he/4Mn9/PPPG8NwzTXX
cNOQCrATQzBjxgyD9FGjRlFrayuzH5MbEx3dQzcxbEuXLqUrrriCFwiQ/cQT
TzB7wCZMWrDtr3/9K23YsMHT7kzzPFVGhbyQnBzlC+QZYVPWUqWsIBY+LH5F
8esIXU/8yuWylMsXPCNt6jXb1GuxKTtYlRVFuzkh2flC0ZYWiW8H+u9//8sj
hYk98ObrYj19kZ4OSOm/9dZb6corr6QLL7yQzjjjDJo9Z65g+5G079670sSJ
E2n06NG8Tm2xxRa8Ph0k1jFM3pPmz2dJwVp33XXX8fA98sgjPGkhJRheTFiw
W0itZ//B4IGpb1Vm/3GqLBHsFOWdFC9IhBicZKSX6+p//nBcobd/Vw1uOL9r
FR9ZCnd3mN53UiSV1z3Ox4P6leid/OwMJZjWQiZKXd724VzcRN6uIKWLZLCg
CnbduMJgvFYoXF6XRiNHkd5Obl4S0ULXdD9NL4sJg4n54IMP0nUrL5UMFnPg
7AXzeS3B5MN6OGzYMP7/sLmnqzot4vN8WrFiBXV2dtK9995L9918lfHu9sBr
vM3Ihzvm0Z1XHWPKDtKSkQwz2X2pgselS82DwC/7cZ5qEjXuSEnAfOKnj2J5
UtSNoEJKUuztDlEyk6KwX5ISShbUkE6oVkdKhcv7eMDHv3v64pRJif4wsX5K
C+xypxgnBnaAOlQnuoNhCovdJ4h/wQCFB0RNylCPYk9/UuhcquMdvTE1B7es
1k41eDW6ju93Y/T78caM5QEqy2uvvcYbDJYk6BjYjNva2ngX+PrXv05HnHQ2
g5958izaZ6/9aM4pZ/HvtoXzWI847/zz+fcFy1ZQ1123000rl/Lv+9e8wcse
lj8sg0PIeimzY6iYDHGVYKLgxolB4XQVkneqZZGUMhw3ZHgkDfQAQxcli7p6
irpBQXcEa7SstqlbNZf3afLju79/uJ7rCc23vNotminV181lPn+ECph9qqrq
ciCW82hw2Zq5I6httFJaPkrNmPHo1yY0la+trWzLZTvTP/7xD9Ysfv7zn7Op
gm0QihMWQWgy0I8POugg3j6xWEInxta62267sVkAZRNbKZRGwEFhhNYSibxC
91+EgX+Q1hW0MBUo5BNl3oBYut14rDkxpGO1n5L7TCzCKwz03JCwjHq7vHIZ
9fVQfyI7dIM2xjJobhyZ4jYnRprnhHpyFOwQKDrDkEI9TaJ+rzEOjtVaTdVs
XreUXufjvGD3DGRLrCgkyCfKOkNJzwFqSsRDXZKtHb2UKpCumo50V3AyFw/I
soKJuxXNtJqbMePRr01oKl9bWxnPZRPpn//8J/3+97+nN954g6cERBq2CZR7
aJmwbmE7YRpAu4SFDp0C0wRWL5Z+bAHQTjGdIFOYXjAc1FLuGa1lUWiJmRxP
D0+J52BQ0J7njR65/VRZvNfQSgxFsKM37sbTQRk5mw40mdngPi1G2EyLPGPt
CGg9WdXxBsmoUlGnxVSnyjvV2UA8b+FpZ7usf6AayXQ0IHnq9ZPaohWdHVDL
NGg+ESzTI0v8LDXRam6iEk2rGY1bK61cNoHtGkgt/EXw1cBPBMv6fKGwwGyF
hwGeBJi2sLXw/YADDuBNA5vCypUr6Y477mAPAsxl+MX+8pe/sNdgomICbCX4
zzLxsNT5fBhmg7mNHhu9IWjlvasvKVtThlAgnisfJ8+gDlSLCc26sm40mdkw
eFLfUQNnO6pwVr3LxeQUN22RejtE/YNUe9mYMil5iSNKhuWeEM1WcrLXjKsC
f6sZvxmPfD3JjMb8mpVpKO9vrLmXy6641U833HADO/Pmz59PhxxyCO24447s
bdpoo41o5513ZmXnpJNOYl8DvGMPPPAAK/1Y2bFbbNiwYaoS6XzcbId1qblt
I9KNYbzUR0dTMgRb2Uv9ggPFpFWcK5g3SGPQYkLzkY00d9QizTPVnMRSkYon
mGEp7kylZAvFy6Q7jnRksqqnO1HOZ8trE6sLcd6yAgnz6iHL0LGDFbpUxG+o
fElNaUnfKTBPvDRgEnmqQD3RjNpA89bHn7AH9oc//CE9dAem9wW0eMmFdOpZ
beL7uXTk1EnsIYXPa8YxpxI8GucJjQR+srvvvps9xz/72c9Y6f/0008907mt
UYIvGYoPRMgPBV20E80UvyJM1fLLig6o84UolQhb5fd/ZXKrLZMNNK0mNDad
qFOEd+I+9PLi10XditMlES5QXyfUgV7Kmjnrk4tlidtu9Vzeqy3JF0qU5vUA
eeFsiaQMjU9sgdTj66CAWWUrSpXNF4wbEzuSLhp6fF9XmR6/FW+AK0S1yx94
iV588UWO/Vy5cjmDnnPqXJp+1Cn8ffa+W3K0Atr1ojY4RBbTzff46f8e7JRT
aW2SnS54TO3M4GamyrVBiG8oHCPDeFK96mUhaThzPXbclZbQKIuLyyzIJq56
nNla0itK7bSa26kcnTEmNK6ssIgyS/IsLhDLeSYupELTbaZJ7OwDPdIR1J+S
w9Qv90F/f9pwH1apw7+rv89TX5d0Jg1ksKnmqA9mAPSnnHYfwkOXkUa4r5eS
+SLLRqLPX+Kz2MUgxe13rqF3kkl6dU0vXYrfFy5ntRUBMWz5o0btQHPOQnuL
6LR5czgsumLZBeL3RfRYqI/eX7uGrmLrPMyaTDEbk84vaamU2rF/r72d8YA0
rcIJORop1WUtEl82W6W5MlbgKKk1QUWbSxeVaExwa8MNT1UeVHEUHsufzbL5
7nZeyE02D4rDXdKoNTz5nSFtWnuc67WY6+n3pSiC+V12AD1T75qoWxkUwKyX
2ow2BA38wsResozOXLiQddEDZi+Q4CN5O79s5VXslIBJhWBmPp/XzTQpaFMr
glc9pfCG3tiNVwZhpneWPcDvLet4l1PHG8s87VPC7O73e7WuqhdD0TWTEm7o
NEaITmK2sLwmpjl32NUeE60WMxTtj7HTQqvxoD8dH6D+/n4aiKd42rRUeVcN
rknzpJAVylxUvItSIp3bh4s340wCRPBhjyPCtWjRIg5Bb7/99rTZ1H3o6GNn
0ymnnEJtbedyVsGTTz7JuiKi5es/+kCQ3k/RgThl8qR8BBVNNavifCZpru5Q
fKDRF6Enx6Lcl1gizcpmA/lziDE8WYoJ/qRyRaNqGcX1dbsaLebIXJm4+Plz
HKcbgP+PPvoo6++nnXYapxTAEQ+vI74j6+Gqq+SCgNg1bFGhJ8nchVbnNu7i
z4158UA2RiAQYLsWmRdIhkFez2abbcbZFQgEQB6eeuoplh9kfuDZ2Bn9rfw5
lhM+4D6CuQwHKvZWJKSMGTOG9t57bxY3kI8cHThc161bJ0nfwhl3J39uxLEL
xN6gUiJpBLE2kIzkECybcMQiJwepTn/4wx8YeJIz2msUWmRM/epXv+K8EYQ1
kDEAkseOHcvcgPcLltRPfvIT9iLg2VGi3V6iElhfwscw58bG2ZRtUmPZF4Ft
Vp1EehUySxCvhAghSwUuPLj0kJa2evVqTpZBwFvAb9oA0gYb35cFK8u+5FEf
a5RBnJHQgpyis88+myN3GOlDDz2UkxCxyMOhUCyWEnG+HJZ9NYZviIb+DJsy
uX6O5nUeuUfIR0IUCf50RJjOO+88zmLBaiSG5ygbFAtrbOqA+iiT8alR9P77
7/POgh1Ah4CPP/54uummm3hnggdp1tCQ1aZIQDZnd3c358chM3OHHXbgVEXs
KMi+QDiNIY5wxnU2f47kXQBZGgsWLOCcPITtsJwjYo3kXTzHOKNZqNAgQvjd
736XQUEO8nQRGXz44Yc5MxLPcSY0jOV0LhjBiWVIODv66KPZuYwEW2wnYg7K
fsx1JuBkRQDmNLJbsaNiWJChqvvB1oB45jmjOVGRAjTYHKEHgrXwcSPS+fbb
b0tSTnbGcYLCAZ8MMlI1Diwrd911F/35z3+WOE5zxnG8woH4D3DA+NabtwXH
Gc44JJ9bWe+BjoSoLGgAiwU8VzrTGXymAt+wYQNv+IcffjhnaGIqwrbCc44z
+NEKHFsltk3MD2RyYzaDu3jOLZeEIxUQKiDLE2ocRhEqOcJjeM53bvNw/myh
v/3tb6yxQfogTGvWrJHcWuwMe5iCxURAJAMjhveG8F3oDHuogsWagIRVsAkc
F3RI2KXOsAcrWKQzAXarrbbiRFcxkySs1xlWGwnQtaDmQULQb6w9XOMSZ9j9
FSxmLJJr0V+ktghLSMIuLx8cafo2c346ZAlbpl4aVjg3tK8CgyqNzF6IMHZd
PB3OYNMVGNQs6JoYS7SMZ6Uz2N4KDNov1jBkssO4w3OFM9ieCkxwjjm59dZb
c3YCnqucwfZQYOgP5BR6NY474LnaGWx3VYY8CPTrueeekzy/xhlmV9UUVHuY
CliR9Cy+tnyodlGVMU9B17Jly3gpwXOdcxs7qzJ4o7EJiGkv6bpewpQcF6Us
3lG6zCVb2nAvFAtclsvllaVspUHTBfMEi7cQG0nDDZIGaX7qhE/loWg159ga
cYuuvlS1BFCXRF/9OhUNWvzRSHxK5Ax3iZn2nRTbEUXFUQpoKnqMOhX58IW4
5FjCtdThpe6wyib+35MXRVP9BtGxVIYS0ZDsjPRwe5psejFF9eLzzz/nOY6c
BawSeG40BsEt70vyZ3R9KWjWlDDplm9HWFa3kOmXzuqwkXdrpX1HRTv23nnz
5vHpB2xgeG4yaHfLqjKcIfVmCLVaUneomBcKbNacm1NQyRLBeL4K/U1MN1Zj
sRFK6V9lEO+WX6HRVs0Dccn10PWLhSIVsgnq7WwvY46V7MmKYVhjkCaAY1l6
k7/ZoNwtn6E65bWF9PUYUSHGER89awOxrBRJeC3bt1OQUKtgShhsvqVEbCng
aTRkDpyWZOQLhXANegWaVCJG4R4Z1IP73m6J2V6V4TgQPBLGVn+rQblboExS
jqSBegN2YyyBtGIuSeFgGOmK6ilITqhImZ2gaMbD5MahMrGbSfK7FPkj3QIe
kilucZ3qMZWiWrt8gQGOoRQzA7KJ7n6Tg9VK+baqDMYFtB9hzUjKbzMYL8lg
skzHH0qxg9IhGBe/v8W3b/a+Fyna67MLS9hRPEmVIU8Nu3k0GpUU3y4pHq6I
KvPMjjAksmYvsfbxZlNxhSlB2QLZ+Uy2UWVYlLE9+v1+SdQdkig7tUTDwNSG
ioxfbjBbqzJYLjgKh7Nh/OZOEwyDTFQ1YSYhNUToTLLmXc7Yt1Jl2OhhFwmT
SsJ0u8Pg8Az8sUYvqsBMUGVQIuC/FQaGhLnbHQb55zjCZbRTBWZLVQYrGV4w
w01+jzPMFqoMhxeR3oijt/zm3nIO65pQd5EoZlB0rzP2zVUZ0oJxNFMIsYS5
zx0GyZVQ4o12qsBspsrguIf5lEqlJMz97jD6SKbRThUY7SaGaYp2PvzwQwnj
d4dBFAA+HqOdKjDjVRl8HZAYIdUS5oHyUdE1IY/wcxvYH3DHjhwApPfVAqO9
gQjB4Pi2AbPaHQZngHBuuBYY7Z1EXAUhmvXr10uYB91hcKAXtpvRTg0wWFVg
ZdYCs7Eqw3lnWKUGzEPlo6JrIk3+2muvta/pgB3HfuETLIf5ImbbWJv2dBkC
XkhMMtrrke01zETTBLNaq7QOO6VJEww/ArK0KwjGDtMwo8wgMRmS2njBhWxI
DI642/B5SKywZpMVlqVYX2g4fCFiiMLhEPV0SiYFhOaXyOposJXwjVQZgifw
AhuEP2wQPmQmWLPJBHuHAt72VqVhwaI0PyjVMwcON3iMbQgdGnNrtCXVPc5t
eKlf5VJw3pM8wWEnF5q9OFAA57AN1UNjaiH2UUppxqQMlPR9SpYSPkuWll5n
EFVFZPuzzz6TtD5SonWoLK3RlgxWfrJRNl9wdiEZ7rSQW8bkMaoM55zgQzaY
XCJ86Awta2ak7mlaOT98JiOrGulI2ofOVUF6jUbWuC+UHFeybAsU6da+M3eq
oVvgOIwNwyUJg21gWZOnzKuIXLQd56E+qqa1cyPe9qikePAMLO0oLaSFgRVL
WRyqdhQhdmLRtBVFdtrDaFMZzHJbGH6tayIjwrIfVcGu5z/0eCTmGDx6zB3m
pZdesk69GmBw1wj05Xpg4GxTzn5XGH25BSw/hLSEtilhHneHQXwTh2eMdmqA
QUIatGBbGAbRNaHcIERZD3YEEnAXTz0wkHRcQ1QLjL5eBWEiBDoMmF53GDha
QF89MNDjcaVSPTDQ+xExrwcGyU4W3d8MwyC6JmReJYW5YtezHNyCJ8KAecId
BlcQ4bamemBg+SE0Ww8MtCRwuR6Y4447jkNK9cDgVinMl1pgtBkA7zPuEcIh
Sn7zZPmo6JoI8iK108D+pDt25ITh5qJymEEJilH1oJiGRYaGxU5VNDTM4tKv
k/0Ba1CsEwcKbHdJTTtWZQSnK2hvdEQsolQRGRFL6ohYR8CUfGzfBWSAIh3T
hv0NCIelVDgskjHCSdloj35dlXCkfSDX1IbwhsXCiuyTMh0Qyw0YB0+qEg+3
Bi6IsyF+aIyzVotxhiheOpmiXLGC7QblbOrot4g94vYDpA0yvU8Z9A6NWQbN
uWSWaXwQ8Gg8QbFIQEXCuilVtBdwPW//9Kc/WddFE+lDZaW1WK008b3TpJq3
e7somi4YfHGiHEo0pNyG8qEz00Za4mGYIQEvuhETY48FPW+3lmuKn3nmGc5O
qaC4ISEw42yI10/xdIbSqRQfZkils44hME05UjOQ3mDDa0nGUIbAcCK7s9lA
3VNxqsaOYlALqsspHjwLzZi5ojiVZF4K7Phs0jx1pRKHGKDvl1Npp5VoGKQB
WVZ2MwyD6JrIA0KMqx7siLyo9AlXGM0B5D/hQIAB87Q7DDQ92P31wKDXiL3V
A4M5Z7GmaoCBloz8qXpgcJeqRdcxwzCIrgn9G6c06sEOyx6H1euBwe2sFjmp
AQa+fZXpWTMM7BaLvVMFRs8FJBrhYL74X8IE3GEQR4MlarRTAwwu+UXSgS1M
k3kLx2WysPHqwQ4LB5cc1QODhEZcc1wPDNJ3kYNbD0yFPNYAA+8hrrWpBwYK
Mo5CuXMYNiH8O/Vgx/5uiTrWAIPxRhiiHGZwrDah01ax2nQbSGNUibIWGjyN
ttqKmRh1d5istg4/xbK2VpumHQcukBRbQXuDrbaiMpPQIbETp2J9UkMSulrG
WH5azV3gB7o4lhY8zxhcb4CxlotJZgTjeavV4GXl34le07JmordBNlq88u6r
grr1smScVNL8u9/9Trs1TTQ3wjSTVwFbbnLUV0tGMkWTaSa+4n5bLdwWQR4q
qwzDUbLKBKlaz+0JRagv0K1mYNDkdajkbSQS0clCJt42KGImJ6SPegM9Ri5l
h1icUgXjWt5yeuFGR+KRld5GZSTKexgED1Skl6dtHheTp0wZiZVUI1yCrctM
dWOssGJSovQFKC0zEWVnRf1k0Zlg5MSozCMTm2XrQ2t85eIhbXz5+1K61Jid
5YTi4lOkspgIHfy0w2IuTQOiOhdnVFZIJS1wQOIuMxMt0xyqwssNPau8qvZK
4EHucE9Pj6cWfMivwjWBNVQ1KUZuVWH7qSiEW1WsfjgrWUNV2IlIGa2hKvJg
9bEsl6qIgyAHoLyqmaO4dtywASz4Wiz4kHHY2toq6z3rXA/nfsaPH+9aD36P
SZMmudbD8S5hpbrWQ5bXjBkzXOvhmKjQaV3rqUhYZT3NPKRt4kpt0ntbFeZB
PV+wYIFrozjb2tbW5loPBzSXLl3qWg/H6VeuXGlTr1zxVGlv1ZAh83LVqlXO
HEEQEOcka+EIjoeuXr3atQdIPTZORKl6Xzy1ztoGnBNiobC00WAzoXQSxBeM
e0bYEIkDQcaRSk3k9tRQe4CfNLfXEYjZkolgnZGUXOLlkCj/Iy3Kv3zy8kpv
GVdqtSEQJyHFNldO4JBp+02W+4t1mb78EtqvHZXYOtauXVtOZSOOIemyYlrG
7DrDSUliicISQY07XWRivRRHfemOmW2wiIRlVM62Bh0r0p3NqZvJuiNpjx2V
OOdqnCUvUdmozLZSbwtKT/ZBL262oRRWsXGeWlPamNNCwoJQLn1KpcV3fU2v
UNozhpJupRapjsYJbus6PpQJbPFer0fnu/bESveI4ZG4JH4VnuRf/HLQdXNj
6paYB+tcfiKaKtd4o0XNPPiCoQfikR5utReXqsAdBbdUeRXNDKRlqcdm7y/h
QRKTSkpyagrx0G233bZaFajKUJmrVEFO/u67716tCv6MlfZQOFSB51NFOJ2q
IEUFt5Y5cQYXatTCGVjx2OSrNIU/I4STnlWq4N4s3P1RpQqu78IR4ypVcMsL
jmhWqYIIDa5scOr2JZdcUlO3zcaqQ1MwKfR1ApYqViVWsugr9L70ukaowctq
yjr6x83tNdwXnhkIWTOYOrqx+tv5wi10NtbvrTUfJHMMpNKUivexdqSPktiF
6cvY2gBnd0KfXzDdkR6XF3c6HXQvI7JBHm7tMB7Il12GXTOhQ6P2jrG4tTXv
ugJRZB3xQeuAywn8MjKHRhnGZDef/xC7X8jn0f5A0wEbWd9WS2/UYY8sBZll
HRSIRCmi/O2dQTlHXzQIGjpVt9WaHZSX3OyOZHQzEWh46g+1MLaQoqoxvmcl
cV5/n9Qrcwl5o61PXlBsoagxzuV4sEsLUyhuAEhKXpCUDL73OJdOMKb+aIzS
SoLXyMb4+yD8JWun755h/w8nzcxy\
\>"],ExpressionUUID->"d75e9085-64ba-46a9-adf0-dbd33162af21"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"<<", "doApndxcLim.m"}], ";"}]], "Code",
 CellLabel->"In[41]:=",ExpressionUUID->"fac8db05-d45b-4283-8783-3b7d1a6ff276"],

Cell[CellGroupData[{

Cell[BoxData["\<\"Running doApndxcLim\"\>"], "Print",
 CellChangeTimes->{3.698258172131688*^9, 3.7792088688159437`*^9},
 CellLabel->
  "During evaluation of \
In[41]:=",ExpressionUUID->"c7f646b7-70a2-4325-8361-cbdcb7e955dd"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwBGIQ7ZX64uKBl6l2MJrFWargvqSLPYw2nj9jzmbJEDjt
ffb6prmSKXA6POX73kmSJXD6rn67c69kC5xeIOrf1iU5BU43cmxW75RcAqcj
Iheu//BxC5zm/t8Y4y63H06rBr57cbj7CJwuP2dpP+PLSTgtvkXwHiPjeTi9
7ZHzmfM2l+D0oay50pFvrsDpr2q2/Gtzr8Nppp+rBaRVb8Fps/8J24LX3YHT
Z1pMzh3Tug+n5Se8/rny3QM4/fr7/XtXDR7B6SWvdp/i63sMp/lkl79/8uQJ
nO7J3Jq2QOUZnP7msPpJRv1zOF1idGSL2OEXcPr+uiPdFxVfwenfWVdma1a9
htPajuz/0na/gdPuixTTN4q/g9PlsvFKD2Pew+mkAIOwO4kI2q+Zset6GoJW
e7n449kCBH1ly4sDu1oQtIFPUfyUNQj6RVXrHPc/CPpVmHbGQoYPcDrhgzCT
PDOC9lZ+airFgaCVOtvnCggh6AshZ3L+qiJonTeh3Nd9EfSOEJ/9XQEI2nmv
U7FdMIKO6tO/vTQCQXcacK4uSUbQz0r2eAlVIujFfUZzllYjaAAsT4qu
        "]], 
       LineBox[CompressedData["
1:eJwBcQGO/iFib1JlAgAAABYAAAACAAAAZVpcFN+A8D9V66RD2YDwP0O5b+qv
jvA/jKG2rM+N8D+g/SKKTaTwP8PMCzrLn/A/LGYZPgGn8D81E/UP3KHwP7fO
D/K0qfA/5zgqJuOj8D/On/xZHK/wPyQlbc7Up/A//UHWKeu58D+rlggrS6/w
P4iqzN2evPA/xuwDIBOx8D8UE8ORUr/wP1IoNcvSsvA/LOSv+bnE8D/QUi7/
ObbwP1qGicmIz/A/DYsu+qy88D/m7n99PNLwP0wijL03vvA/cVd2MfDU8D8p
pQmtu7/wP4goY5lX2vA/2nBZy6/C8D+2yjxpJuXwP7E1/yFOyPA/Ew/wCMT6
8D9jIvwcjNLwP9K9iodJ/fA/tD0lIavT8D+SbCUGz//wP9fisLvG1PA/Espa
A9oE8T/IaN9L9NbwPxKFxf3vDvE/obYmAC3b8D8Q+5ryGyPxP7f0yPQ14/A/
e+scessv8T+DFUTSF+jwP45iw1s=
        "]], 
       LineBox[{{1.0754441703715678`, 1.0571500995977208`}, {
        1.1006199702932813`, 1.0665168382691128`}, {1.1433199410560302`, 
        1.0813578131435677`}, {1.1852403893468402`, 1.09464799771041}, {
        1.186950332026888, 1.09516318949059}}], LineBox[CompressedData["
1:eJwVz30s1HEAx/HzFNUwD8201IgVUmEoVp+eM09xZyw6GcekJDIPPbrmZElk
5qkQStFyhJZ2law1bplyiYpjNItOufv+cHcevv3647PPXn++bWOSuXG6HA7H
kd3/twmSWmt0CVrDBPzIm0p08I7rlRxhkM+tyHYZV+K6r6imfYpBuuKtIM1I
BdtRv+F60Ty8fOoG37io4O2VU2LttgB/i+9rnUNVOLW5X6MjW0D380kI0lWY
lxZMXBAuwuoAb3qxQoVy/ag0rr0a8eUREXOdKljIO+p036sx1nMwCcMqGFwV
hu5N0cBh6LK3lVoFTmOUeMJci7YamM5ZEqRWigvMu7XoZLq+hrkTvHbOMzI7
v4T+1JrMuGACM7/UHTdMlsFkXPP9kUgw4vJJliVZRuCScf5ULkFLNex/Rq3A
PqHRT/SAgC/2NLNZXUFtVdSCQydBtqhWONK0iqMmRhWRMoJnv2zumQRQfFyS
Kvm/CfKqRNHyIAqS6+DZw1rAnXVoDqHwXE5OdVMQbJJIWgLDKcS3RwfWzBLc
Koz8cDuGdcxJd/EfggTPCuW6LApB3ru0VSWBXY6lr2EDhaFHgVGZmmB1zxXj
oScUW4V2Jzgagm+zkwMNTykeW8wWnGFdFN7GP9ZK0ZPuxPhoCagT96JIQlGr
yI4dX2J7PxdW68koSvcl92+jBC9zF2NlgxTSHF5lEesSn9OO9cMUgSF3+BrW
/o92th+SUxQ3mvZJOQxeZfb1CqfZnuRLwUm6DEpdPApDFBRnqb98kHXKxP1Q
278Uk5E5gv16DLYHnBvrYijk+a4RpvoM9HW+PCxapDgc39SbwXq8wycxWkvR
vLHYdZy1JLF+1+4VCl7TzF1fAwZlW9bPU0qRveHFTAvrf3jQXw8=
        "]]},
      Annotation[#, 
       "Charting`Private`Tag$1237333#1"]& ], {}}, {{}, {}}, {{}, {}}}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 2}, {0., 1.251389424172288}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258172131688*^9, 3.779208869809697*^9},
 CellLabel->
  "During evaluation of \
In[41]:=",ImageCache->GraphicsData["CompressedBitmap", "\<\
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
SNUc2KkPivZIB68NfC4JFXN/irl7OdT+hnulOF1zVxdWZYv03ee8us0op4on
91bmrv3ydtttZ5Ki/Zh79UE6XxJr5ltAqU7V6GBHypP5M0y7/vrrybt/8cUX
Suv7mn7jU1WEnk+KZn/3q3JBEc/Zx30G0+655x4KGRYsWKDYK+tZ+RxITiT4
okqkK05q7RWjP8u0J554grx/JBJRbMqcsw4xLRwOk11ua2tTmN52zEymoT0I
nJ966imFqbFjZjENUQb80QMPPKAwvVwYgjzHJRFbDB48uBBb9LTXHmaaji3k
KlBhyty0eZ6FjtgCtyJGjhxpYosyF5JeYBhiC6z33LGFN+JFRnQLK/6yI2Yz
olts8acd8RLTdFjx9ddfO3l78ZeZhogCS6xPP/3U+cNe/BWmIZjA6grBxO/2
4nOYhjgCevj66687v3Uf5nYuhDUVFG/WrFlOzl7nq0x7++23yXk/9thjzq/2
4q8xLRqN0krqrrvucn6xF3+dafCKOF4xceJE52d78Q4eH3ix7bffXlxwwQWw
az/ZEW8wAvZ2n332Eaeeeirs8FI74k1GwFccccQR4rDDDoOvyNgRbzEC9v30
008Xe+21F/gtsSPmMgI2+aKLLqK+SJu82I54m2luQ/qjvfg7TNOGTw6Hk+6u
CfO4EMwWzIkcYucHe52dTNMW66WXXnK+txefzzSphFR7a2ur8529+LtMkypO
dqqpqclJqeL6UoH7K0q8Qt33mCYnFRkwOcmcb1UVJbeUo6W3lGV4y7Re+D4R
ofPP5N/C3hvKXUyT057yb1hbfVPKstJXaJT7Kg4vt/o+6w9M6C677CLOPvts
2Kyv7ZyVh6j4lRVeTvQDZqYTbWx4F9mZLcNXP3gx/JDhyKsdf/zx4sADDwTz
ryoxrPw1Cl7cFjA32PxzzjmH4iMp10Q3bn/jSwkKEfACfivVg9wkrt98qRio
kfG6mb8M9/u9+vUx05DNQ6oAruaLIp4ed9yX5aq8F9NPmKYdlow6nIXMVIV6
fEfchHCSqUHrKLPcXXOv6RBjGvzeyiuvjPjIiReP39+5pO3VwU+ZpjOSCNs+
76YqVV559rInnzENS2UoiuwR0zyN5ucsNlg8FMfOsvQpMTsizghkTDCZ4RMl
+hM7YiF3Ab5KLpvFoEGDhM/nw1kT5yM77EuGwVXjOMqKK65IZkr2jKecyxOp
qV0jrXsamyiUbEF/cPJp4cKF79vZJBmJxBuOaMEx4U4crgPJoPRdO1J5ht4U
euIEJc4XrLDCCrSZi/MdmKPz7PDvGY7gEs0cPnw49RHOH5v1MqJxInb4jy44
HCpEg7bjKAG2U3Gy7U07XEUjtdR4ZHYuvPBCyiFuscUWFFPPnTsXA/aavYYs
14BhRenLL7+cPBgagUUqDqIuWbJkjr2GHHcBsRtysocffrgYMGAALfEbGhoo
5ihzIf4PbgDcynPPPUdKgpAYjcB9kGnTpkHHXrDXILgGJHUef/xxMWzYMDFw
4EA6YQINxbAsXrzYfTm0UIFOZUCCcr2G1Q5NiP79+9Mg4KYkBkYuGJwy1zjp
2ZvrgsNCuHPdddeRGvXr14+OLmETRkZLCCmdMpcn6dmP60L4+fLLL9MJeez2
9+3blyR7zTXXID8IsTlTK9Q1iOvCVzchm40zr5gcqAthA44EyDUk0vScg7TX
pXJ1fald4I9pCoFD57H3j8AXB56xzpSu9OEK1a3O1UH9sFaQy1JKMuNcDMQG
8UElMYayeWWuztFzHa4OB4IxmSElnDXDhIYxwZEemASMjlxATq5Q3RCuDucE
cXUA6wwIrE+fPqSfaClUHmZaDnpjherUVkY/0g9sS8G8jBo1iu581tbW0p4e
EnIy5hXvvvsuyvGWlL3OLbhOTB8YP5hmzFuYTTQTOgwQeKGZuVzOKbn0QTVt
66oJd2PvvvtuWpNjAwc1YXGCMyeQH+43SKvglLk+Qc+duE5syOJ8J4YXx2mg
yRheBCTYsMXeAg4AIxvvr1Cn2tLuTyqDgYGFwrIb4wzbB8eEGQJbCElixSr7
VOZwPz335WpxdlJ6c4qXIEjEgRgcaCR2d2GVcSUEF3xlE8ZWqPYgrhaLQhyc
l+tmUmgsJ5GBhqXEXETIibGDFZdhJx9Dt69XenndmnTKXZukP4ZxczBBMAmg
vbC4cFeYwgjWEGdjNYppjPsBcg1bV9qc4rVM//+O+5T0PJrrw9VUTGGkSDDP
kIOBykBoyNvCiGG3GUZbGuez7C1UcV5VFyzpqQ4wDiAFwyhDMeEW4NqRM8dk
gIeCwuFS5IMPPkgTZunSpXzQ1bMZ+oZiFdcu6Xmaqxk4ZDlz5kxqBpQSlgIe
CvqO4YJhwhof2gMrfry9GfrMgddlTK9mjORmwL1jPHDtCoWgMQiyYVoxnaHA
GKtZs2ZR6lAaf74d4bl40t974HVfs/BtKXXMHJPy1VdfpSubUE1sKsKe9+7d
mwwxlofwkJhd8+fPJ2/NJ/zsCyv9HQpVXOKkpzobOZAMJMwzNpMnTpxITgXG
EXqBAUF+EXMKhhLuFjokpbFfUXsqLLr+zjVPeo7nRkJrMGS48wm7Ar9y0EEH
0fSBOYPPwQoelhPTCL5DSrlwYok+VSzSlvVKKD3VabkaSuIiUkCQh5QWoodd
d911edgi+Vr+SeoOmwszD6nLIGbHYrXyXNP9jdui9LyO5QeNg0ywgkXcdtxx
x1FAiUFGXgoeBsH6LbfcQgdYFixYAC+3VTeN91wDVnerlJ7qXM0gGk5YRISC
cOU41o6sJAL9mpoaskfQOxwNwixEvIQmyXWF4z5B4cXjduaBzAd0dfbs2WRM
sEuE0A6eT9s88EAF6DaW2TgxLgfRKXOGgJ6TPXjA96Af2IlDP6CWmD8QLSw+
joLgOCXCFumvnDK77fRUpw5WIFnhNA6MIQIOuFsYCMxRuNuVVlqJvAmO6uIr
JqD+CGXx1TASO6gCG7WTPoBWtDD7sDmI9LFw3HvvvcmFoivY3UXXIEaYAlzL
6+uqu1D1U67ZAIHC4WDtCCMi9a5vhQb9H3xb2T/2feH1P6RV9DcnOpzl/g2M
srkn\
\>"],ExpressionUUID->"996caf95-3910-4adb-910e-24ce69c1caf1"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {GrayLevel[0], Thickness[Medium], Opacity[1.], LineBox[CompressedData["
1:eJxTTMoPSmViYGCQB2IQ7ZX64uKBl6l2DGDwwX6BqH9bl+QUexi/kWOzeqfk
Ejg/InLh+g8ft8D53P8bY9zl9sP5qoHvXhzuPgLnl5+ztJ/x5SScL75F8B4j
43k4f9sj5zPnbS7B+Yey5kpHvrkC539Vs+Vfm3sdzmf6uVpAWvUWnG/2P2Fb
8Lo7cP6ZFpNzx7Tuw/nyE17/XPnuAZz/+vv9e1cNHsH5S17tPsXX9xjO55Nd
/v7Jkydwfk/m1rQFKs/g/G8Oq59k1D+H80uMjmwRO/wCzr+/7kj3RcVXcP7v
rCuzNatew/najuz/0na/gfPdFymmbxR/hwgv2XilhzHv4fwXVa1z3P8g+Dpv
Qrmv+36A8zsNOFeXJCP4z0r2eAlVIviL+4zmLK1G8AFIU6em
        "]], 
       LineBox[CompressedData["
1:eJwVjH0s1HEAh6/CacpLLq+paIk6SSdbefkUbdgSWdIdRUVb62JeaolG5LyH
Cyu3cl4S0m5K2fUyKYUr59ya7s77u4nz/XnZIjfpj2fPnn8e68vRgZEbaTQa
c53/juSEMgZTCDIu+L/si5kDw7TEYjiNQD+V/euVTA1hcq60iEcw29NyzsVT
DeZUaqpPFkG7OO7S6JtZeImjp0UPCF7YN5q9q5yBUGOT7VdF8MjMWcxvmALz
qrnHhucEnO0Gn3Tdp9AkNZhvrCXwErICaySTkJatsneICEbD2GYRMxPQnOix
/y0mUPFMmVLfcWTW/eh/+oGgfsEjr2BiDAzjL4WBzQTn1aKEpPQxMMdEy+JW
gpq8qEVZxyg4vKyOzC6C6PiLMVzuCCbUyXfd5AR6Z+TMRIsRxATfciI/CT6/
z497LRlGpt2Vx8EqArrrZIXQaRiMQrafXj/BY/97OUFTQyhb9t/QPEjgOR+x
xiofwluJ2zXbcYLYYd2sG+ZD8GSxrFSTBPMhfPfChkF0Cuy786YJmEbVyaXO
gxjjmhxdmiMI7eJ5V3sPwNiA6LauEJwVOExUlPdB/jE7w1dD4KYjqrPx7QOf
u1ena42gOOVw7tXFXmyTcDaptCjQq1B97Fwv5LeX7oXRKezy6xiQbOkFf18B
bXwzhU7tIOddbSpsS/+qmdOnMPMs1oXhrYKcFZ5004gCO09rtHGLCvyRlZUV
Ywqc+4/qzXuUCCwsTkgxobCQffChZ6USRscP/dE2p+Bc/q3EMV4JmVpyK8eS
gnZbeNOQjxIFTyKXDHeu/1ZXF4OslQg4RYsv2U3h5AmBf75GAcO/pfOWeyi0
F7u25fYrIKs9ElO+l8LAcn/I6RYFCs7L5mztKPBupG79WaNAAP16VP1+Ct+I
XZ9VkQIGb7VnnRwoCNO62w6kKSCNEF5vcqRgaJsk09xUIPH3jjvf11sluMSt
Wu9/OHpxVQ==
        "]], LineBox[CompressedData["
1:eJwBcQGO/iFib1JlAgAAABYAAAACAAAAPbdG8gQ18T/9GJOdimTYP84fC2bN
OfE/Is2jaLxW2D+OzqXkUjzxP0hZ30d1T9g/DSzb4V1B8T+YcVYG50DYPwzn
RdxzS/E/NaJEg8oj2D/MleBa+U3xP1sugGKDHNg/jER72X5Q8T+CurtBPBXY
PwuisNaJVfE/0tIyAK4G2D8KXRvRn1/xP24DIX2R6dc/CNPwxctz8T+oZP12
WK/XPwS/m68jnPE/HCe2auY61z/aPERI357xPyvdvCEDM9c/r7rs4Jqh8T8+
k8PYHyvXP1q2PRISp/E/YP/QRlkb1z+xrd90ALLxP6HX6yLM+9Y/XpwjOt3H
8T8niCHbsbzWP7h5q8SW8/E/MumMS30+1j9rNLvZCUvyP0urYywUQtU/q0li
oL728j+ge5s0eVLTPzQsIT4/+fI/tgN+KEBL0z++DuDbv/vyP8mLYBwHRNM/
W4Kgob/98j9eyNvzQT7TP/uKtAQ=
        "]], LineBox[CompressedData["
1:eJwVjnkw1nkAh3kjWkM5qtU41o5tE6VV6TDTZ4YcuYoirKNU1lRevTqkyZRd
Wls5yotXjpa3LCHkyPFqzZdyTe+pTTmSci2mdn+/91XCd+0fzzz/PH88FuHR
vic4ampqTkv8b1PvbuPPHAZZ0bk77WwV2BNz4HKnGYO9Vuar/d7KIb2zJ0Du
wkD0TKCaipUjMH5B6buPQd1m51Q+T46RMFGGwoOBwDXffe8pOVjL3ZLeAwxU
hRfVG0PlMK7c7vIyiEGHNc9E5SxHeJvNtgEuA3frI8O1q+VQTq1bNZbFILKq
qVzVKAM/f7wjL4eB1nLBBVWNDFv31145mMdgOq1Ea6FCBt4jrw+thQxWKvie
ZkUyzFy8Ks4tZ5Be0MGpui7DqObYTR/CgJwIiNEMkeGFefWKlhkG9/wzed8v
l6HuoOsy/l4WyfvFb7UjpUj2aEgycWXBMXLcUXNMimAnK+37+1i8xqjL0TAp
OFt1dOu9WVTae8Z3+kvhbSBZ0xfAomLSpZg4SzEh9d9oEsWieWCz6VFLKdZ5
R/jcy2ThI7ANc+2U4Ipb0t3aMRY27VO1La/EkIdGBm+ZZMG9MD3eIxfD8ryH
cfkUC1u73ug3PWJ0F+pnCD8u/aGJt+aJGEZf8q/dnmMRfM57uq1IjJKK+qgz
ekoYaDoNG0eJITWYcLCxV8JhcVdgiKYYFoPufcIkJeL0yoI4Ts+xe0ci39hO
hZGgLt3fpD0INpN8Vleo4BWfExlc2g1ld8rImYRZ+D7PDnmQ0QWBRug5X8tP
kBxoif+pqhOGQ3VFnPZPGMxJOa3xdwc04xMO7eJ9huXHiF/OWXVArTS0csRg
Dpf0tcXcX58h5k5ligGZw/pETvo3E0/RYp2src/9gj2tV+L6A59C3z3G5me9
eeiZ3vXTGG7HwCapIk40j/NuNxZ2RrSjqgCW70MX0Dyt+8PifBtCKu31TRcX
oM2udf4rrw1XkwoTBh4soqFsR3iiQxsqJkxz9TwpWmH4JHOMIDk/6ciQN8Vj
ZcGl9aMEx31nvnvoQzHoVZz3+B2BiUhU5XWYwl2dt6p/mOB62o/PboZTjDFz
1ev7CSLtc/75Ko4irNmjTioh+DbRyE2rmCJ9eVEit5Fgcedl3ZclFKnawhyd
BoJXM+/kxWUUX/64pVdaT5B+uCbEpZpCWHRj7WgNAd3oezZJRKEV61h49CHB
gCytYJmCwqc3gXtaSNBwbfaY4gXFmtkQ7soiAr5DmJWwj6JlRULPo98JPO5v
rnUcoqh3VubN5RM0XXzelTBJcapVR5AqIMjatD3NZ5ri6ll+/LZsAt5I3iGL
DxTjvV//+TqTYIPn6Tet7FKfe8ZvQwaBhnrvvfRZim67f0sltwiG6xxOHpmj
UBvsCYxNJxCdFNpuWaAwnOw9bp5GkG2uo6SU4nbz++6OFIL/AFEnLNY=
        "]]},
      Annotation[#, 
       "Charting`Private`Tag$1237380#1"]& ], {}}, {{}, {}}, {{}, {}}}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  BaseStyle->{FontSize -> 14},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{468., 289.23990673495075`},
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 2}, {0., 1.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Print",
 CellChangeTimes->{3.698258172131688*^9, 3.7792088699699078`*^9},
 CellLabel->
  "During evaluation of \
In[41]:=",ExpressionUUID->"5dbfc486-376f-4cd5-a81c-c6d3357adfac"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{964, 1321},
WindowMargins->{{Automatic, 145}, {Automatic, 0}},
FrontEndVersion->"12.0 for Mac OS X x86 (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1488, 33, 2664, 66, 357, "Code",ExpressionUUID->"66b1abf8-6e7c-4210-aab1-25591743efb1"],
Cell[CellGroupData[{
Cell[4177, 103, 1058, 25, 205, "Code",ExpressionUUID->"d41dd9da-36a6-41ab-8b91-3000de6af7d3"],
Cell[CellGroupData[{
Cell[5260, 132, 551, 11, 24, "Print",ExpressionUUID->"04e67933-a92d-401f-a4be-3c2adff23269"],
Cell[5814, 145, 489, 10, 24, "Print",ExpressionUUID->"97d0f34f-87a5-4399-bfb5-ab04b2672177"],
Cell[6306, 157, 367, 6, 24, "Print",ExpressionUUID->"d8e12474-32b8-4676-8fb7-ea85b117b9aa"],
Cell[6676, 165, 372, 6, 24, "Print",ExpressionUUID->"6e22531a-9cd8-4cd5-b976-a87d4999ee45"],
Cell[7051, 173, 534, 11, 24, "Print",ExpressionUUID->"1e2ede76-6b31-4654-a8cc-c1a9e4d6f639"],
Cell[7588, 186, 370, 6, 24, "Print",ExpressionUUID->"a8ef65fe-89c4-4d28-9096-7d3a10165e65"],
Cell[7961, 194, 7600, 148, 297, "Print",ExpressionUUID->"978070c3-b28b-4bdd-b302-cdf829532529"],
Cell[15564, 344, 383, 6, 24, "Print",ExpressionUUID->"32be7860-3ac2-4312-93c9-7b27f51a2609"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[15996, 356, 943, 22, 186, "Code",ExpressionUUID->"2056b67e-5f44-4c31-98a2-1fc7a665dd08"],
Cell[CellGroupData[{
Cell[16964, 382, 349, 6, 24, "Print",ExpressionUUID->"efb5079c-ff64-466b-b161-a4841e82dbdd"],
Cell[17316, 390, 509, 11, 24, "Print",ExpressionUUID->"6803fc8b-003a-4c1e-9fd5-04274d3c3b15"],
Cell[17828, 403, 347, 6, 24, "Print",ExpressionUUID->"24dfbab6-1760-49f3-b8a1-c4758981e1a1"],
Cell[18178, 411, 348, 6, 24, "Print",ExpressionUUID->"74b146c1-6beb-4a8c-a172-193928c96aea"],
Cell[18529, 419, 13527, 249, 297, "Print",ExpressionUUID->"89960266-2766-48bb-b788-ac85309bed99"],
Cell[32059, 670, 364, 6, 24, "Print",ExpressionUUID->"ef69b3d8-8d12-45b7-945a-5dc036277cad"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[32472, 682, 941, 22, 186, "Code",ExpressionUUID->"80c759c5-2435-4bcc-9424-8e42d9430a48"],
Cell[33416, 706, 617, 12, 24, "Message",ExpressionUUID->"9b41f51c-71e9-4f2a-92c1-d035c6948f40"],
Cell[34036, 720, 616, 12, 24, "Message",ExpressionUUID->"a9fb8807-b320-41cf-98dc-9b8aef15e8c5"],
Cell[34655, 734, 617, 12, 24, "Message",ExpressionUUID->"cf773dc9-f84e-418a-9644-8c79c607eef0"],
Cell[35275, 748, 599, 12, 24, "Message",ExpressionUUID->"f7869f45-2857-48d5-a76a-535fe1090d19"]
}, Open  ]],
Cell[CellGroupData[{
Cell[35911, 765, 177, 3, 52, "Code",ExpressionUUID->"405e5899-8a16-402a-9029-bff464525957"],
Cell[CellGroupData[{
Cell[36113, 772, 345, 6, 24, "Print",ExpressionUUID->"ea1a73e1-5c9a-4120-98bf-6b292028d5c9"],
Cell[36461, 780, 17298, 321, 297, "Print",ExpressionUUID->"873ab6e5-0ee3-45c7-9b1b-524fb6e143d5"],
Cell[53762, 1103, 362, 6, 24, "Print",ExpressionUUID->"d0a9b2ae-d9f6-4f52-8b0b-66c61d53de33"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[54173, 1115, 159, 3, 52, "Code",ExpressionUUID->"4ae70998-8649-42e4-ab59-566ff6aac041"],
Cell[CellGroupData[{
Cell[54357, 1122, 350, 6, 24, "Print",ExpressionUUID->"f312aada-697b-4ee3-bf70-eca389b9311e"],
Cell[54710, 1130, 8618, 192, 297, "Print",ExpressionUUID->"f03b6454-3ff9-4405-9889-6130c37553a8"],
Cell[63331, 1324, 364, 6, 24, "Print",ExpressionUUID->"eecae740-0dac-4891-b556-85d30050040a"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[63744, 1336, 155, 3, 52, "Code",ExpressionUUID->"0ee29405-fe87-4931-a886-dab77e7b51f8"],
Cell[CellGroupData[{
Cell[63924, 1343, 320, 6, 24, "Print",ExpressionUUID->"ab06dd24-be17-4de1-9d3c-2c5415ed1b55"],
Cell[64247, 1351, 10655, 203, 297, "Print",ExpressionUUID->"71b53eb4-2b5e-49d5-a6e3-550b2bc88a9c"],
Cell[74905, 1556, 338, 6, 24, "Print",ExpressionUUID->"d343ebde-a5e3-48a0-9a5c-559197b1466e"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[75292, 1568, 159, 3, 52, "Code",ExpressionUUID->"8d856e8e-1a4d-4969-98a7-b3e8d130c219"],
Cell[CellGroupData[{
Cell[75476, 1575, 350, 6, 24, "Print",ExpressionUUID->"4d0c2d0b-3123-40c6-ab08-df299e8037b2"],
Cell[75829, 1583, 6806, 146, 297, "Print",ExpressionUUID->"ef1a9c58-5d0b-482a-bfc8-50bf337d4fd7"],
Cell[82638, 1731, 366, 6, 24, "Print",ExpressionUUID->"e9fea293-e6e0-4b30-aa1a-ed1c31ed5767"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[83053, 1743, 157, 3, 52, "Code",ExpressionUUID->"95872a86-67e5-42ba-bbad-e52d431bbfbd"],
Cell[CellGroupData[{
Cell[83235, 1750, 345, 6, 24, "Print",ExpressionUUID->"ae89e77b-ff0a-44f3-97f7-bf26f05f0b0f"],
Cell[83583, 1758, 346, 6, 24, "Print",ExpressionUUID->"358ce1e4-351c-4fe2-a0ba-d2641566fb59"],
Cell[83932, 1766, 331, 6, 24, "Print",ExpressionUUID->"0e72788d-f004-4079-9965-e63368dd2bc5"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[84312, 1778, 161, 3, 52, "Code",ExpressionUUID->"16a9664c-30fa-4c59-b065-0f2564c33b67"],
Cell[CellGroupData[{
Cell[84498, 1785, 257, 5, 24, "Print",ExpressionUUID->"4961791f-b67c-4c08-a81d-133728c37e0b"],
Cell[84758, 1792, 46023, 775, 386, 21804, 376, "CachedBoxData", "BoxData", "Print",ExpressionUUID->"839e5256-5efc-4759-8141-18761c08d589"],
Cell[130784, 2569, 273, 5, 24, "Print",ExpressionUUID->"fb3afb74-8a65-4384-adb0-aea2f7f1c618"]
}, Open  ]]
}, Open  ]],
Cell[131084, 2578, 345, 10, 110, "Code",ExpressionUUID->"27080653-8a99-4d04-9ac4-a9ecebd2bd8f"],
Cell[CellGroupData[{
Cell[131454, 2592, 158, 3, 52, "Code",ExpressionUUID->"28adde6e-99bf-4751-a663-16be1096a5f3"],
Cell[CellGroupData[{
Cell[131637, 2599, 544, 15, 24, "Print",ExpressionUUID->"9190bb35-7e9d-44de-a67b-137f1b9ca0bc"],
Cell[132184, 2616, 438, 10, 24, "Print",ExpressionUUID->"40e9923d-ad3f-4171-ad8d-ff268402fcb8"],
Cell[132625, 2628, 723, 17, 25, "Print",ExpressionUUID->"40bada2f-6c3d-44d6-8f72-07e099dbec67"],
Cell[133351, 2647, 531, 12, 25, "Print",ExpressionUUID->"f57e9183-4c59-4a54-938b-23bc7f2de07f"],
Cell[133885, 2661, 406, 10, 24, "Print",ExpressionUUID->"5bdf0a24-4c23-4395-acc5-0da9415d746a"],
Cell[134294, 2673, 430, 10, 24, "Print",ExpressionUUID->"6df74598-748b-4277-a481-b0bfd3223f01"],
Cell[134727, 2685, 9855, 193, 297, "Print",ExpressionUUID->"b675ed12-9e2a-4cb0-94b9-b07e1306b23f"],
Cell[144585, 2880, 543, 15, 24, "Print",ExpressionUUID->"beb9cb89-f6eb-49fb-9846-43d0d430651e"],
Cell[145131, 2897, 750, 16, 25, "Print",ExpressionUUID->"2b47d8d0-cd5d-4910-bca8-028449bb80e0"],
Cell[145884, 2915, 418, 10, 24, "Print",ExpressionUUID->"dbf99cd3-e1f6-460a-961e-1f88299e2470"],
Cell[146305, 2927, 438, 10, 24, "Print",ExpressionUUID->"4d9a9040-ae9a-4988-a180-ebf0e5387029"],
Cell[146746, 2939, 404, 10, 24, "Print",ExpressionUUID->"8894de54-83e0-45e4-b6e6-03f088ecf101"],
Cell[147153, 2951, 406, 10, 24, "Print",ExpressionUUID->"ee901539-cbe5-432d-96c4-5f91ae354bdf"],
Cell[147562, 2963, 9447, 186, 297, "Print",ExpressionUUID->"de2f17ac-cf63-476f-90b0-bff6b9571971"],
Cell[157012, 3151, 507, 12, 24, "Print",ExpressionUUID->"0a27e499-d8e2-414a-8e8e-891834d11d6f"],
Cell[157522, 3165, 616, 13, 25, "Print",ExpressionUUID->"542c3a6b-d7d0-44a0-ba47-339cfe943380"],
Cell[158141, 3180, 438, 10, 24, "Print",ExpressionUUID->"0f2e48f6-57ae-48c7-ae69-8c8cf5db7e92"],
Cell[158582, 3192, 404, 10, 24, "Print",ExpressionUUID->"6fe2b877-58a7-488c-9e42-fc779488499e"],
Cell[158989, 3204, 406, 10, 24, "Print",ExpressionUUID->"99d51f1f-013f-43f1-880a-c9e7bc3fde21"],
Cell[159398, 3216, 575, 13, 25, "Print",ExpressionUUID->"b6b50591-d7dd-4e33-bcbc-6dcd3a3559ec"],
Cell[159976, 3231, 6726, 135, 297, "Print",ExpressionUUID->"8f66aeb6-7a10-4bca-b72c-c37d841954f4"],
Cell[166705, 3368, 296, 6, 24, "Print",ExpressionUUID->"d627760e-e245-4ffb-8c85-6b39b1d62e84"],
Cell[167004, 3376, 500, 12, 24, "Print",ExpressionUUID->"6a5cdfd4-477e-460a-b564-2fe1f47c1a9c"],
Cell[167507, 3390, 503, 12, 24, "Print",ExpressionUUID->"8285d7e1-4c57-48b4-8512-51dd9acfdc4b"],
Cell[168013, 3404, 749, 16, 25, "Print",ExpressionUUID->"14d25b02-7543-4f77-9a36-54e1e6b3ffcf"],
Cell[168765, 3422, 440, 10, 24, "Print",ExpressionUUID->"cc0f8bbb-0863-4653-b7e2-3637d380ad03"],
Cell[169208, 3434, 403, 10, 24, "Print",ExpressionUUID->"4f241c2f-f302-41c0-8ac3-5d514ce28d9f"],
Cell[169614, 3446, 406, 10, 24, "Print",ExpressionUUID->"bfdb76f0-87e3-48ee-9f1f-a2dc2aeffd16"],
Cell[170023, 3458, 752, 16, 25, "Print",ExpressionUUID->"2aa80781-740d-498f-8122-80905d017bfe"],
Cell[170778, 3476, 10088, 190, 297, "Print",ExpressionUUID->"edabb707-ea97-458b-a874-e7a95fc613c0"],
Cell[180869, 3668, 287, 6, 24, "Print",ExpressionUUID->"23a57249-9a21-4d1a-b928-919a63ca3a65"],
Cell[181159, 3676, 4967, 103, 297, "Print",ExpressionUUID->"cee4f39a-77dc-4e70-abcf-ccd34648f343"],
Cell[186129, 3781, 293, 6, 24, "Print",ExpressionUUID->"a13a8577-e23a-4e76-8f26-81c8671856ef"],
Cell[186425, 3789, 500, 12, 24, "Print",ExpressionUUID->"56273811-7665-46b8-b55a-06bad86163c1"],
Cell[186928, 3803, 745, 16, 25, "Print",ExpressionUUID->"1cc957a5-c94a-41d9-8219-d9f359b76446"],
Cell[187676, 3821, 438, 10, 24, "Print",ExpressionUUID->"7f4d5841-c340-4232-ad16-2ba14a467cb1"],
Cell[188117, 3833, 404, 10, 24, "Print",ExpressionUUID->"4fbc934a-a7e5-41b5-90fb-926a85a02902"],
Cell[188524, 3845, 405, 10, 24, "Print",ExpressionUUID->"49d6e4b9-aa84-42cf-a4da-852a24f0eb6c"],
Cell[188932, 3857, 507, 12, 24, "Print",ExpressionUUID->"2671e226-c912-4d04-8f57-48a70a44fddb"],
Cell[189442, 3871, 259, 5, 24, "Print",ExpressionUUID->"bd6ad618-1fb1-40cf-9b9c-24e6f6b2caff"],
Cell[189704, 3878, 297, 6, 24, "Print",ExpressionUUID->"3613c6bb-c7c9-4582-9693-71463ffff9c2"],
Cell[190004, 3886, 15730, 280, 297, 5448, 109, "CachedBoxData", "BoxData", "Print",ExpressionUUID->"d75e9085-64ba-46a9-adf0-dbd33162af21"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[205783, 4172, 153, 3, 52, "Code",ExpressionUUID->"fac8db05-d45b-4283-8783-3b7d1a6ff276"],
Cell[CellGroupData[{
Cell[205961, 4179, 224, 4, 24, "Print",ExpressionUUID->"c7f646b7-70a2-4325-8361-cbdcb7e955dd"],
Cell[206188, 4185, 13597, 247, 297, 4156, 90, "CachedBoxData", "BoxData", "Print",ExpressionUUID->"996caf95-3910-4adb-910e-24ce69c1caf1"],
Cell[219788, 4434, 5445, 114, 297, "Print",ExpressionUUID->"5dbfc486-376f-4cd5-a81c-c6d3357adfac"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature pw0gq2BXyzqVhDwTXhF22c9c *)
