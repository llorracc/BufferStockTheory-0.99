#!/bin/bash

for f in PFGIC-vs-RIC-vs-FHWC PFGIC-vs-RIC-vs-FHWC-vs-FVAC; do
    cmd="pdflatex --shell-escape tikz-$f.tex"
    echo "$cmd"
    eval "$cmd" #echo "pdflatex  -file-line-error  --synctex=1 -interaction=nonstopmode tikz-PFGIC-vs-RIC-vs-FHWC.tex"
    mv "tikz-$f-figure0.pdf" "$f.pdf"
#    convert "$f.pdf" "$f.png"
    pdf2svg "$f.pdf" "$f.svg"
done

