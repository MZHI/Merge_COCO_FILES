#!/usr/bin/bash

PATH_ANNOTATIONS=/path-to-directory-with-json-coco-files/

# merged.json must be just copy of any json file from PATH_ANNOTATIONS
ANCHOR=./merged.json

for fname in ${PATH_ANNOTATIONS}*.json; do
  echo $fname
  python3 merge.py $ANCHOR $fname $ANCHOR
done

