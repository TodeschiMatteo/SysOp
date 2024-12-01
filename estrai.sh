#!/bin/bash

exec {FD}< ./input1.txt

IFS=$',\n'
SUM=0
while read -u ${FD} PRIMA SECONDA TERZA; do
	(( SUM=${SUM}+${SECONDA} ))
	echo "${PRIMA} ${TERZA}"
done

echo ${SUM}
