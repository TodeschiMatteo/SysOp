#!/bin/bash

while read RIGA; do
	STRINGA=""
	for ((i=0; i<${#RIGA}; i++)); do
		CAR=${RIGA:i:1}
		if [[ ${CAR} == "*" || ${CAR} == "?" || ${CAR} == "[" || ${CAR} == "]" ]]; then
			STRINGA="${STRINGA}\\"
		fi
		STRINGA="${STRINGA}${CAR}"
	done
	echo "${STRINGA}"
done
