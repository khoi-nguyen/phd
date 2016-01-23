.PHONY: all clean

all: main.pdf log.html

main.pdf: main.tex Makefile
	latexmk -pdf -use-make main.tex

log.html: .git/HEAD .git/index
	git log --format="<entry revision=\"%H\">%n    <author>%an</author>%n    <email>%ce</email>%n    <date>%cd</date>%n    <subject>%s</subject>%n    <body>%b</body>%n</entry>" > log.xml

clean:
	latexmk -CA
