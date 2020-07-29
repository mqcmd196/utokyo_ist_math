#!/bin/bash

FILES=(`find -name "*answer.tex"`)
for file in "${FILES[@]}" ; do
    latexmk -pdfdvi ${file} -outdir=${file%/*} -r latexrc.pl
    # rm generated files without .pdf
    rm ${file%.*}.aux
    rm ${file%.*}.dvi
    rm ${file%.*}.fdb_latexmk
    rm ${file%.*}.fls
    # rm ${file%.*}.log
    rm ${file%.*}.synctex.gz
done