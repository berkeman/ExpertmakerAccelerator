doc.pdf: .figures doc.tex
	pdflatex --shell-escape doc.tex

.figures:
	cd figures && make
