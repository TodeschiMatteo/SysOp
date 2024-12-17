#!/bin/bash

if (( $# != 2 )) ; then 
	echo "errore: servono 2 argomenti: larghezza_minima  altezza_massima"
	exit 1
fi

# ORA nelle due variabili ci sono i parametri
# passati a riga di comando.
# Da qui in poi aggiungete quello che serve.
# Leggete il contenuto del file ./divani.txt
# ed usatelo opportunamente.
LARGMIN=$1
ALTMAX=$2

while read NOME LARG ALTZ PROF; do
	if (( ${LARG} >= ${LARGMIN} && ${ALTZ} <= ${ALTMAX} )); then
		echo "${NOME} ${LARG} ${ALTZ} ${PROF}"
	fi
done < ./divani.txt


