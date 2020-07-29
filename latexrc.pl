#!/usr/bin/perl

$latex="uplatex %O -synctex=1 -interaction=nonstopmode -file-line-error %S";
$max_repeat = 5;
$bibtex="upbibtex %O %B";
$biber="biber %O --bblencoding=utf8 -u -U --output_safechars %B";
$makeindex="upmendex %O -o %D %S";
$dvipdf="dvipdfmx %O -o %D %S";
$pdf_mode = 3;