#!/bin/bash
set -eux

# set var
USER=mqcmd196
REPO=utokyo_ist_math

# set year
YEARS=(`cat years.txt|xargs`)

# compile TeX files
for year in "${YEARS[@]}" ; do
  latexmk -pdfdvi ${year}/${year}answer.tex -outdir=${year} -r latexrc.pl
done

# If the master branch is updated, the CI executes the below.
if "${RELEASE}"; then
  # create release
  res=`curl -H "Authorization: token $GITHUB_TOKEN" -X POST https://api.github.com/repos/$USER/$REPO/releases \
  -d "
  {
    \"tag_name\": \"v$GITHUB_SHA\",
    \"target_commitish\": \"$GITHUB_SHA\",
    \"name\": \"v$GITHUB_SHA\",
    \"draft\": false,
    \"prerelease\": false
  }"`

  # extract release id
  rel_id=`echo ${res} | python3 -c 'import json,sys;print(json.load(sys.stdin)["id"])'`

  # upload built pdf
  for year in "${YEARS[@]}" ; do
    FILE_NAME=${year}answer.pdf
    curl -H "Authorization: token $GITHUB_TOKEN" -X POST https://uploads.github.com/repos/$USER/$REPO/releases/${rel_id}/assets?name=$FILE_NAME\
      --header 'Content-Type: application/pdf'\
      --upload-file ${year}/${FILE_NAME}
  done
fi