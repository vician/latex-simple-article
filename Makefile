filename=$(shell find . -name "*.tex")

tex="pdflatex"
bibtex="bibtex"

pdf:
	${tex} ${filename}

all:
	${tex} ${filename}
	${bibtex} ${filename}
	${tex} ${filename}
	${tex} ${filename}

read:
	xdg-open *.pdf

watch:
	nohup xdg-open *.pdf &

clean:
		rm -f *.{ps,pdf,log,aux,out,dvi,bbl,blg} missfont.log
