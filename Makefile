
name=freecoll

$(name).pdf : $(name).tex $(name).bib figs/
	(cd figs; make)
	latexmk -pdf $(name)

clean :
	rm -f $(name).pdf

install: $(name).pdf
	scp $< cglab.ca:public_html/publications/drafts/$(name)/
