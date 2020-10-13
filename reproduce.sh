cd Code/Python
ipython BufferStockTheory-Problems-and-Solutions-Source.ipynb

# Compile Latex files
cd ../../
for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Slides; do
	pdflatex "$file.tex"
	bibtex "$file"
	pdflatex "$file.tex"
	pdflatex "$file.tex"
done

for file in BufferStockTheory-NoAppendix BufferStockTheory BufferStockTheory-Slides; do
    rm "$file.aux" "$file.bbl" "$file.blg" "$file.dep" "$file.log" "$file.out"
done