#!/bin/bash

scriptDir="$(dirname "$0")"

# Compile LaTeX files

for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Slides; do
    pdflatex -output-directory=LaTeX "$file.tex"
    pdflatex -output-directory=LaTeX "$file.tex"
    bibtex LaTeX/"$file"
    pdflatex -output-directory=LaTeX "$file.tex"
done

cd Appendices

for file in *.tex; do
    pdflatex -output-directory=LaTeX "$file.tex"
    pdflatex -output-directory=LaTeX "$file.tex"
    bibtex LaTeX/"$file"
    pdflatex -output-directory=LaTeX "$file.tex"
done

cd ..

for type in Figures Tables; do
    cd "$type"
    pdflatex -output-directory=LaTeX "$file.tex"
    pdflatex -output-directory=LaTeX "$file.tex"
    bibtex LaTeX/"$file"
    pdflatex -output-directory=LaTeX "$file.tex"
    cd ..
done

    
