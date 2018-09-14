
name=freecoll

texsources=freecoll.tex introduction.tex definitions.tex agraphs.tex triangulations.tex

$(name).pdf : $(texsources) $(name).bib figs/
	(cd figs; make)
	latexmk -pdf $(name)

reset : clean $(name).pdf

clean :
	rm -f $(name).pdf

install: $(name).pdf
	scp $< cglab.ca:public_html/publications/drafts/$(name)/$(name)-`date --iso`.pdf
