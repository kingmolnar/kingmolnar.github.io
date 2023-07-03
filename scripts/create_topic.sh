#!/bin/bash


TITLE=''
CATEGORY=''
NAME=`$TITLLE | tr 'A-Z' 'a-z' | tr ' ' '-'`
FILE="${NAME}.md"
cat <<EOF > $FILE
---
layout: post
title:  "Web Applications"
category:
tags:
---
Lorem ispum
<!--more-->
## Use Cases
- alpha
- beta
- gamma


EOF