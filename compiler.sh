#!/bin/sh

pandoc style.yaml main.md -o result.pdf -F pandoc-crossref -V documentclass=ltjarticle --template=template.tex --pdf-engine=lualatex --toc -N
