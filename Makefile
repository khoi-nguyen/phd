.PHONY: all clean

all: main.pdf

main.pdf: main.tex Makefile
	latexmk -pdf -use-make main.tex

clean:
	latexmk -CA
