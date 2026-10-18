ENGINE ?= xelatex
FLAGS  = -interaction=nonstopmode -halt-on-error -file-line-error

APT_PACKAGES = texlive-xetex texlive-latex-extra texlive-fonts-recommended texlive-lang-spanish latexmk

all:
	$(ENGINE) $(FLAGS) main.tex
	$(ENGINE) $(FLAGS) main.tex
	$(ENGINE) $(FLAGS) ficha_personaje_2084.tex
	$(ENGINE) $(FLAGS) ficha_personaje_2084.tex
	$(ENGINE) $(FLAGS) ficha_personaje_2102.tex
	$(ENGINE) $(FLAGS) ficha_personaje_2102.tex

install:
	sudo apt-get update
	sudo apt-get install -y $(APT_PACKAGES)

clean:
	rm -f *.aux *.log *.out *.toc *.xdv *.fls *.fdb_latexmk *.synctex.gz

.PHONY: all install clean
