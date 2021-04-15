DEPS = *.tex bib/*.bib 

all: redrace

redrace: redrace.tex $(DEPS)
	pdflatex redrace.tex
	-bibtex redrace
	pdflatex redrace.tex
	pdflatex redrace.tex
clean:
	rm -f redrace.pdf *.aux *.log *.bbl *.blg bib/texput.log
