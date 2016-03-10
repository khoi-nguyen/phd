.PHONY: all clean run


all: main.pdf

main.pdf: main.tex Makefile
	latexmk -lualatex -pdf -use-make main.tex

clean:
	latexmk -CA
	if [ -f *.bbl ]; then rm *.bbl ; fi;
	if [ -f *.synctex.gz ]; then rm *.synctex.gz ; fi;

run:
	(xdg-open main.pdf) &
