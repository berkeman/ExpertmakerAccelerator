DOC=doc

all:    ${DOC}.pdf

.figures:
	cd figures && make


${DOC}.pdf: doc.tex dataset.tex concepts.tex method.tex urd.tex setup.tex iterator.tex standard_methods.tex xmtitle.tex introduction.tex tools.tex .figures
	git rev-parse HEAD > gitrevision
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode -shell-escape" -use-make ${DOC}.tex

clean:
	latexmk -CA
	rm -f ${DOC}.pdf
