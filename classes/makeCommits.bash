#!/usr/bin/env bash

for commitNum in $(seq 7 100);
do

	for i in $(seq -f "%05g" 0 5000);
	do
	 echo -n "// some junk $commitNum" >> HelloApex$i.cls
	done;

	git add .
	git commit -m "add some junk $commitNum"

	for i in $(seq -f "%05g" 0 5000);
	do
	 sed '$d' -i HelloApex$i.cls
	done;

	git add .
	git commit -m "remove some junk $commitNum"

done;
