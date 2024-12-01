#!/bin/bash

IFS=$',\n'
SUM=0
while read PRIMA SECONDA TERZA; do
	(( SUM=${SUM}+${SECONDA} ))
	echo "${PRIMA} ${TERZA}"
done < input1.txt

echo ${SUM}
