#!/bin/bash

HOME_DIR=`dirname $0`
DRAFT_DIR="${HOME_DIR}/_drafts/_projects"
mkdir -p $DRAFT_DIR

echo "Draft projects: ${DRAFT_DIR}"

pushd $DRAFT_DIR

find  ~/GITHUB/ -name "README.md" -d 2 \
| while read F
do
    echo "$F"
    DIR=`dirname $F`
    TITLE=`head -1 $F | sed -e 's|# *||'`
    URL=`cat $DIR/.git/config | grep 'url =' | cut -d= -f2 | tr -d ' '`
    NAME=`basename $URL .git | tr 'A-Z' 'a-z'`
    PROTOCOL=`echo $URL | cut -d':' -f1`
    STEM=`echo $URL | sed -e 's|https://github.com/||' -e 's|git@github.com:||' -e 's|.git||'`
    cat <<EOF > "${NAME}.md"
---
layout: project
title: ${TITLE}
git_url: ${URL}
protocol: ${PROTOCOL}
web_url: https://github.com/${STEM}/
sort_order: 100
category:
tags:
---
EOF
    tail +2 $F >> "${NAME}.md"
done

popd
