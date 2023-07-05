#!/bin/bash
tail +2 <  _site/index_by_tag.csv  | cut -d, -f1 | sort | uniq
