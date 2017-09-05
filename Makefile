doc.pdf: .figures doc.tex
	pdflatex doc.tex

.figures:
	cd figures && make
