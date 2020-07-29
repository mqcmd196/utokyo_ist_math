FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    curl \
    python3 \
    latexmk \
    lmodern \
    texlive \
    texlive-latex-extra \
    texlive-lang-japanese \
  && rm -rf /var/lib/apt/lists/*

RUN mktexlsr && mkdir -p /app
WORKDIR /app

# latexmk env
ENV $latex="uplatex %O -synctex=1 -interaction=nonstopmode -file-line-error %S" $max_repeat=5 $bibtex="upbibtex %O %B" $biber="biber %O --bblencoding=utf8 -u -U --output_safechars %B" $makeindex="upmendex %O -o %D %S" $dvipdf="dvipdfmx %O -o %D %S" $pdf_mode=3


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]