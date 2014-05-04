# SCA Marshals Documents

This project is to attempt creating a unified and normalized set of marshal
rules.

## Process
These are the basic steps for restructuring the underlying content into a
unified fashion across the various documents.  Care should be taken to *NOT*
edit for content.  Only structural and organizational changes should be taken
at this time.  Any content change suggestions should be tracked by creating an
Issue with the label "content change needed".

### Common Components
For each common sections in the layout spreadsheet, do the following:

1. create a file in the 'common' directory for the section
2. Identify relevant content from [marshals_handbook](marshals_handbook) for the specific section
3. Move relevant content into the file for the section in the 'common' directory.

Each discipline specific document should have common content extracted via the following process:

1. identify relevant content
2. Update the common document with content relevant to all disciplines.
3. If there conflicting content exists, open an 'Issue' to track the resolution of the conflict.
4. If there are discipline specific addendum for the common section, create a file in the discipline specific directory for the section, putting the discipline specific addendum in that file.

### Discipline Specific Sections

TBD

# How to build

Use the following instructions to create "print ready" documents from the source files.

    <pre>
        git clone https://github.com/sca-marshals/marshal-docs.git
        cd marshal-docs
        make clean
        make
    </pre>

## Prerequisites

* [git](http://git-scm.com/)
* 'make' ([OSX Installation instruct](http://railsapps.github.io/xcode-command-line-tools.html))
* [pandoc](http://johnmacfarlane.net/pandoc/)
