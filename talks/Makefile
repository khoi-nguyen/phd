.PHONY: all clean

TALKS := $(wildcard *.md)
TALKS_PDF := $(TALKS:.md=.md.pdf)

all: $(TALKS_PDF)

%.md.pdf: %.md
	pandoc $< -t beamer --slide-level 2 -o $@ -V theme:Warsaw

clean:
	rm *.md.pdf
