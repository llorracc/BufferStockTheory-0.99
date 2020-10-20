#!/bin/bash

pdflatex RelatePFGICFHWCRICPFFVAC-tikzMake.tex 
#pdf2svg  RelatePFGICFHWCRICPFFVAC-tikzMake.pdf RelatePFGICFHWCRICPFFVAC.svg
mv       RelatePFGICFHWCRICPFFVAC-tikzMake.pdf RelatePFGICFHWCRICPFFVAC.pdf 


pdflatex InequalityPFGICFHWCRIC-tikzMake.tex
#pdf2svg  InequalityPFGICFHWCRIC-tikzMake.pdf InequalityPFGICFHWCRIC.svg
mv       InequalityPFGICFHWCRIC-tikzMake.pdf InequalityPFGICFHWCRIC.pdf

pdflatex Inequalities-tikzMake.tex
#pdf2svg  Inequalities-tikzMake.pdf Inequalities.svg 
mv       Inequalities-tikzMake.pdf Inequalities.pdf

/Volumes/Data/Tools/makeWeb-Paper.sh /Volumes/Data/Papers/BufferStockTheory/BufferStockTheory-Latest/Figures Try7-Fig
open Try7-Fig.html

