#!/bin/bash

scriptDir="$(dirname "$0")"

# Compile LaTeX files in root directory

for file in BufferStockTheory BufferStockTheory-NoAppendix BufferStockTheory-Slides; do
    pdflatex -output-directory=LaTeX "$file"
    pdflatex -output-directory=LaTeX "$file"
    bibtex LaTeX/"$file"
    pdflatex -output-directory=LaTeX "$file"
done

# Compile All-Figures and All-Tables
for type in Figures Tables; do
    pdflatex -output-directory=LaTeX "$type/All-$type"
    [[ -e LaTeX/"$type/All-$type" ]] && bibtex LaTeX/"$type/All-$type" && pdflatex -output-directory=LaTeX "$type/All-$type"
    pdflatex -output-directory=LaTeX "$type/All-$type"
    mv "LaTeX/All-$type.pdf" "$type"
done

# All the appendices can be compiled as standalone documents (they are "subfiles")
# Make a list of all the appendices :
find ./Appendices -name '*.tex' ! -name '*econtexRoot*' ! -name '*econtexPath*' -maxdepth 1 -exec echo {} \; > /tmp/appendices

# For each such file, process it by pdflatex
# If it contains a standalone bibliography, process that
# Then rerun pdflatex to complete the processing and move the resulting pdf file
touch economics.bib ; touch Appendices/economics.bib ; touch LaTeX/economics.bib 
while read appendixName; do
    filename=$(basename ${appendixName%.*}) # Strip the path and the ".tex"
    pdflatex --output-directory=LaTeX "$appendixName"
    if [[ -e "LaTeX/$filename.aux" ]] ; then
	bibtex LaTeX/$filename 
	pdflatex --output-directory=LaTeX $appendixName
    fi
    pdflatex --output-directory=LaTeX "$appendixName"
    mv "LaTeX/$filename.pdf" Appendices
done < /tmp/appendices
rm /tmp/appendices economics.bib # Cleanup
