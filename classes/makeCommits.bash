#!/usr/bin/env bash

for i in $(seq -f "%05g" 0 5);
do
 echo -n "// some junk" >> HelloApex$i.cls
done;

git add .
git commit -m "add some junk"

for i in $(seq -f "%05g" 0 5);
do
 sed '$d' -i HelloApex$i.cls
done;

git add .
git commit -m "remove some junk"