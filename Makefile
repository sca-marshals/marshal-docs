DOCS=compiled/rapier_handbook.pdf

all: $(DOCS)

%.pdf:
	cat $(notdir $(basename $@))/*.md | pandoc -N --template=templates/pdf_template.tex --variable version=1.0 --latex-engine=xelatex --toc -o $@

clean: 
	rm -f $(DOCS)
