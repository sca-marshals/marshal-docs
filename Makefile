DOCS=compiled/rapier_handbook.pdf compiled/equestrian.pdf compiled/marshals_handbook.pdf compiled/siege_engines.pdf compiled/target_archery.pdf compiled/thrown_weapons.pdf compiled/youth_combat.pdf

all: $(DOCS)

%.pdf:
	pandoc -N --template=templates/pdf_template.tex --variable version=1.0 --latex-engine=xelatex --toc --toc-depth 6 -o $@ $(notdir $(basename $@))/*.md

clean: 
	rm -f $(DOCS)
