
name=freecoll

$(name).pdf : $(name).tex $(name).bib figs/
	(cd figs; make)
	latexmk -pdf $(name)

clean :
	rm -f $(name).pdf
