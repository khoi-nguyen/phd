.PHONY: all clean run

all: main.pdf

main.pdf: main.tex Makefile
	latexmk -lualatex -pdf -use-make main.tex

clean:
	latexmk -CA
	rm *.bbl
	rm *.synctex.gz

run:
	(xdg-open main.pdf) &
