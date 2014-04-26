#!/usr/bin/python

import sys

for doc in sys.argv[1:]:
    with open(doc, 'r') as fh:
        content = fh.read()

    sections = content.split('\n#')
    index = 0
    for i, section in enumerate(sections):
        lines = section.split('\n')
        title = '_'.join(["%02d" % i] + lines[0].lstrip('# ').replace('-',' ').replace('/',' ').replace("'",'').replace(',','').lower().split()) + '.md'
        print title
        with open(title, 'w') as section_fh:
            if i == 0:
                section_fh.write(section + "\n")
            else:
                section_fh.write('#' + section + "\n")
