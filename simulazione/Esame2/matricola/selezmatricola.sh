#!/bin/bash
grep "SISTEMI OPERATIVI" ./lista.txt -B 1 --no-group-separator | grep -v "SISTEMI OPERATIVI" |
while read MAT NOME COGNOME; do
	echo "${MAT}"
done
