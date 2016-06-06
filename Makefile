.PHONY: all talks clean run

TALKS := $(wildcard talks/*.md)
TALKS_PDF := $(TALKS:.md=.md.pdf)
TALKS_HANDOUT_PDF := $(TALKS:.md=.md.handout.pdf)

all: main.pdf

talks: $(TALKS_PDF) $(TALKS_HANDOUT_PDF)

talks/%.md.pdf: talks/%.md
	pandoc $< -t beamer --toc --slide-level 2 -o $@ -V theme:Warsaw

talks/%.md.handout.pdf: talks/%.md
	pandoc $< -t beamer --toc --slide-level 2 -o $@ -V theme:Warsaw -V handout

preamble.fmt: preamble.tex
	pdflatex -ini -jobname="preamble" "&pdflatex preamble.tex\dump"

main.pdf: *.tex Makefile preamble.fmt
	latexmk --interaction=batchmode -pdf -use-make main.tex -file-line-error -synctex=0

clean:
	rm -f $(shell git ls-files . --ignored --exclude-standard --others | grep -v *.vim)

run:
	(xdg-open main.pdf) &
