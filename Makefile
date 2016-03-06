.PHONY: all clean

TALKS := $(wildcard talks/*.md)
TALKS_PDF := $(TALKS:.md=.md.pdf)

all: main.pdf $(TALKS_PDF)

talks/%.md.pdf: talks/%.md
	pandoc $< -t beamer --slide-level 2 -o $@

main.pdf: main.tex Makefile
	latexmk -lualatex -pdf -use-make main.tex

clean:
	latexmk -CA
	rm talks/*.pdf
