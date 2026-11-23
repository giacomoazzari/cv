# Makefile for Giacomo Azzari - Engineering CV

PDFLATEX ?= $(shell which pdflatex 2>/dev/null || test -x /Library/TeX/texbin/pdflatex && echo /Library/TeX/texbin/pdflatex || echo pdflatex)

.PHONY: all 1page 2page clean preview publish

all: 1page 2page

1page: cv.pdf

2page: cv_extended.pdf

cv.pdf: cv.tex
	$(PDFLATEX) -interaction=nonstopmode cv.tex
	$(PDFLATEX) -interaction=nonstopmode cv.tex

cv_extended.pdf: cv_extended.tex
	$(PDFLATEX) -interaction=nonstopmode cv_extended.tex
	$(PDFLATEX) -interaction=nonstopmode cv_extended.tex

preview: cv.pdf
	open cv.pdf

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz

publish:
	./publish.sh $(msg)
