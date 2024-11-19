#!/bin/bash

for file in *; do
	echo -n "File is ${file} : "
	ls -ld ${file}
done
