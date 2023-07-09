#!/bin/bash
ROOT_DIR="`dirname $0`/.."
SCRIPTS="${ROOT_DIR}/scripts"
DRAFT="${ROOT_DIR}/_drafts/_topics"
REALPATH=`which realpath`

if [ ! -d $DRAFT ]
then
    mkdir -p $DRAFT
fi

# TMP=`mktemp -d`

# # create tag lists
# $SCRIPTS/list_tags.sh > $TMP/tags.txt
# cat $TMP/tags.txt | pr -1 -w 80 -t -n > $TMP/tags_one.txt
# cat $TMP/tags.txt | pr -1 -w 80 -t -n > $TMP/tags_two.txt
# cat $ROOT_DIR/_site/list_of_categories.psv | cut -d'|' -f2-3 | pr -1 -w 80 -t -n > $TMP/categories_one.txt
# cat $ROOT_DIR/_site/list_of_categories.psv | cut -d'|' -f3 | pr -2 -w 80 -t -n > $TMP/categories_two.txt


TITLE=$*
while [ -z "$TITLE" ]
do
    echo -n "Enter title: "
    read TITLE
done
CATEGORY=`tail +2 $ROOT_DIR/_site/list_of_categories.psv | cut -d'|' -f2 | tr '\n' ' '`
NAME=`echo $TITLE | tr 'A-Z' 'a-z' | tr ' ' '-'`
if [ -z "$TITLE" ]
then
    echo "Invalid file name '${NAME}'"
    exit
fi
FILE="${DRAFT}/${NAME}.md"
cat <<EOF > $FILE
---
layout: experience
title:  ${TITLE}
sort_order: 100
category:${CATEGORY}
tags:
EOF

$SCRIPTS/list_tags.sh | while read TAG; do echo "    - $TAG" >> $FILE; done

cat <<EOF >> $FILE
summary: >-
    Lorem ispum
references:
---
Lorem ispum
<!--more-->
## Use Cases
- alpha
- beta
- gamma
EOF
if [ -n "REALPATH" ]
then
    echo "Created `${REALPATH} ${FILE}`"
else
    echo "Created ${FILE}"
fi

open -a "/Applications/Visual Studio Code.app" "$FILE"
# rm -rf $TMP
