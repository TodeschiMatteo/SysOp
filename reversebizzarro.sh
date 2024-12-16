#!/bin/bash

STRINGA=""
ORIGIN=($1)
echo ${ORIGIN[1]}
echo $1 | while ((1)); do
	read -n 	1 CAR
	if (( $? == 0 )); then
		STRINGA=${CAR}${STRINGA}
	else
		echo "${STRINGA}"
		break
	fi
done
