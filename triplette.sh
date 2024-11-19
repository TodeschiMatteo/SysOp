#!/bin/bash

FILES=`ls`

for nome1 in $FILES; do
	for nome2 in $FILES; do
		for nome3 in $FILES; do
			echo "($nome1, $nome2, $nome3)";
		done;
	done;
done;
