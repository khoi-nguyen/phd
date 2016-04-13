.PHONY: all clean run

TALKS := $(wildcard talks/*.md)
TALKS_PDF := $(TALKS:.md=.md.pdf)
TALKS_HANDOUT_PDF := $(TALKS:.md=.md.handout.pdf)

all: main.pdf $(TALKS_PDF) $(TALKS_HANDOUT_PDF)

talks/%.md.pdf: talks/%.md
	pandoc $< -t beamer --toc --slide-level 2 -o $@ -V theme:Warsaw

talks/%.md.handout.pdf: talks/%.md
	pandoc $< -t beamer --toc --slide-level 2 -o $@ -V theme:Warsaw -V handout

main.pdf: *.tex Makefile
	latexmk -lualatex -pdf -use-make main.tex

clean:
	latexmk -CA
	if [ -f *.bbl ]; then rm *.bbl ; fi;
	if [ -f *.synctex.gz ]; then rm *.synctex.gz ; fi;
	rm talks/*.md.pdf

run:
	(xdg-open main.pdf) &
