#!/bin/bash

echo "" > motivo_num.txt
while read ANNO LUOGO MOTIVO DANNI; do
	NMOTIVO=0
	while read ANNO2 LUOGO2 MOTIVO2 DANNI2; do
		if [[ $MOTIVO == $MOTIVO2 ]]; then
			(( NMOTIVO = NMOTIVO + 1 ))
		fi
	done < cadutevic.txt
	echo "$MOTIVO $NMOTIVO" >> motivo_num.txt
done < cadutevic.txt
sort ./motivo_num.txt | uniq
