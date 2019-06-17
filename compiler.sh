#!/bin/sh

pandoc ./config/style.yaml main.md -o result.pdf \
    -F pandoc-crossref \
    -M "crossrefYaml=./config/pandoc-crossref.yaml" \
    -F pandoc-citeproc \
    -V documentclass=ltjarticle \
    --listings \
    --template=./templates/template.tex \
    --pdf-engine=lualatex \
    --toc -N