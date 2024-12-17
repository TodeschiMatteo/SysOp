#!/bin/bash

PREV=""
CONT=0

while read NOME COGNOME IMPORTO GIORNO MESE ANNO; do
	if [[ ${PREV} == "" ]]; then
		PREV=${IMPORTO}
		CONT=1
	else
		if [[ ${PREV} == ${IMPORTO} ]]; then
			(( CONT++ ))
		else
			echo "${PREV} ${CONT}"
			PREV=${IMPORTO}
			CONT=1
		fi
	fi
done

if [[ "${PREV}" != "" ]] ; then
	echo "${PREV} ${CONT}"
fi
