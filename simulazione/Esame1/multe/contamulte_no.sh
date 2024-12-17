#!/bin/bash

while read NOME COGNOME IMPORTO GIORNO MESE ANNO; do
	CONT=`grep ${IMPORTO} ./multe.txt | wc -l`
	echo "${IMPORTO} ${CONT}" >> temp.tmp
done
cat ./temp.tmp | uniq
rm temp.tmp
