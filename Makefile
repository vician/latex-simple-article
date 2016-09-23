filename=tfjcu

tex="pdflatex"
bibtex="bibtex"

pdf:
	${tex} ${filename}.tex

all:
	${tex} ${filename}.tex
	${bibtex} ${filename}
	${tex} ${filename}.tex
	${tex} ${filename}.tex

read:
	xdg-open ${filename}.pdf

clean:
		rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg} missfont.log
