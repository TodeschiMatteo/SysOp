#!/bin/bash
while read NOME COGNOME MATRICOLA VOTO ; do
	if (( ${VOTO} < "18" )); then
		LINES='grep${MATRICOLA} RisultatiProvaPratica1.txt | wc -l'
	fi
done < RisultatiProvaPratica1.txt | sort -k 3
