This will hopefully tell the tale of the conversion from PDF/Word to something we can actually manage.

* Source documents in PDf are converted to markdown via the following:
    <pre>pdftohtml ORIGINAL.PDF -stdout -enc UTF-8 -nodrm -noframes | pandoc --no-wrap -f html -t markdown > RESULTS.MD</pre>

* Once a document has been converted to markdown, splitting it into files named by section title is done via the 'split.py' utility.
    <pre>split.py filename.md</pre>

* PDFs are created via the following:
    'make'
