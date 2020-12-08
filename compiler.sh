#!/bin/sh

pandoc ./config/style.yaml main.md \
    -o result.pdf \
    -F pandoc-crossref \
    -M "crossrefYaml=./config/pandoc-crossref.yaml" \
    -V documentclass=ltjarticle \
    --citeproc \
    --listings \
    --template=./templates/template.tex \
    --pdf-engine=lualatex \
    --toc -N