#!/bin/bash

STRINGA=$1
NA=0
NB=0
for (( i=0; i<${#STRINGA}; i++ )); do
	if [[ ${STRINGA:i:1} == "A" ]]; then
		NA=${NA}+1
	fi
	if [[ ${STRINGA:i:1} == "B" ]]; then
		NB=${NB}+1
	fi
done

if (( ${#STRINGA} == NA + NB && NA == NB)); then
	echo "Vero"
else
	echo "Falso"
fi
