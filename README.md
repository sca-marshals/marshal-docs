This will hopefully tell the tale of the conversion from PDF to something we can actually manage.

The PDF 'converted.pdf' was built via pandoc using the following:
<code>
pandoc -N --template=mytemplate.tex --variable mainfont=Georgia --variable sansfont=Arial --variable fontsize=12pt --variable version=1.10 rapier_handbook.md --latex-engine=xelatex --toc -o converted.pdf
</code>
