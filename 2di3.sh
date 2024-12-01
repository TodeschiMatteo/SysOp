#!/bin/bash

exec {FD}< /usr/include/stdio.h

while read -u ${FD} PRIMA SECONDA TERZA QUARTA; do
	if  [[ TERZA != "" && ${#TERZA} -gt 1 ]]; then
		CARATTERE="${TERZA:1:1}"
		if [[ CARATTERE != "" ]]; then
			echo "$CARATTERE"
		fi
	fi
done
