#!/bin/bash

IFS="," 
INDEX=$2
while read -ra CAMPI; do
	if (( INDEX >= 1 && INDEX <= ${#CAMPI[@]} )); then
	echo "${CAMPI[INDEX-1]}"
	fi
done < "$1"

exit 0

while read PRIMO SECONDO TERZO QUARTO; do
	CAMPIONI=($PRIMO $SECONDO $TERZO $QUARTO)
	if (( INDEX >= 1 && INDEX <= 4 )); then
	echo "${CAMPIONI[INDEX-1]}"
	else
		echo "Index fuori dai limiti!"
		break
	fi
done < "$1"
