#!/bin/bash
mkdir -p external-figures
makeglossaries spec
bibtex spec
latexmk -pdf -pvc -e '$pdflatex=q/pdflatex %O -shell-escape %S/' spec < /dev/null
