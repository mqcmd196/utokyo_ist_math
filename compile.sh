#!/bin/bash

latex="uplatex %O -synctex=1 -interaction=nonstopmode -file-line-error %S"
max_repeat=5
bibtex="upbibtex %O %B"
biber="biber %O --bblencoding=utf8 -u -U --output_safechars %B"
makeindex="upmendex %O -o %D %S"
dvipdf="dvipdfmx %O -o %D %S"
pdf_mode=3

FILES=(`find -name "*answer.tex"`)
for file in "${FILES[@]}" ; do
    latexmk -pdfdvi ${file} -outdir=${file%/*}
    # rm generated files without .pdf
    rm ${file%.*}.aux
    rm ${file%.*}.dvi
    rm ${file%.*}.fdb_latexmk
    rm ${file%.*}.fls
    # rm ${file%.*}.log
    rm ${file%.*}.synctex.gz
done