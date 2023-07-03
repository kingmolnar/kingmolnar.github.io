$!/bin/bash
tail +2 <  _site/list_of_tags.csv  | cut -d, -f1 | sort | uniq
