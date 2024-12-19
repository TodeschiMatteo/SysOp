#!/bin/bash

if (( $# != 1 )) ; then echo "serve un argomento"; exit 0; fi
if [[ ! -e $1 ]] ; then echo "il file $1 non esiste"; exit 1; fi

COUNT=0
while read RIGA ; do
  echo "$COUNT ${RIGA}"
  (( COUNT=${COUNT}+1 ))
done < $1  | \
sort -n -r -k 1 | \
while read CONTATORE RESIDUO ; do echo "$RESIDUO"; done
