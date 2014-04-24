This will hopefully tell the tale of the conversion from PDF/Word to something we can actually manage.

* Source documents in PDf are converted to markdown via the following:
    <pre>pdftohtml ORIGINAL.PDF -stdout -enc UTF-8 -nodrm -noframes | pandoc --no-wrap -f html -t markdown > RESULTS.MD</pre>

* PDFs are created via the following:
    The PDF 'converted.pdf' was built via pandoc using the following:
    <pre>
    pandoc -N --template=mytemplate.tex --variable mainfont=Georgia --variable sansfont=Arial --variable fontsize=12pt --variable version=1.10 rapier_handbook.md --latex-engine=xelatex --toc -o converted.pdf
    </pre>
