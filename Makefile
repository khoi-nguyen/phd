.PHONY: all clean run

TALKS := $(wildcard talks/*.md)
TALKS_PDF := $(TALKS:.md=.md.pdf)

all: main.pdf $(TALKS_PDF)

talks/%.md.pdf: talks/%.md
	pandoc $< -t beamer --slide-level 2 -o $@

main.pdf: *.tex Makefile
	latexmk -lualatex -pdf -use-make main.tex

clean:
	latexmk -CA
	if [ -f *.bbl ]; then rm *.bbl ; fi;
	if [ -f *.synctex.gz ]; then rm *.synctex.gz ; fi;

run:
	(xdg-open main.pdf) &
