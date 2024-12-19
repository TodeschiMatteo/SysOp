#!/bin/bash

S_PARI=0
S_DISPARI=0
INDEX=1
while read NUM; do
	if (( INDEX%2==0 )); then
		(( S_PARI=S_PARI+NUM ))
	else
		(( S_DISPARI=S_DISPARI+NUM ))
	fi
	(( INDEX++ ))
done < numeri.txt

echo "Somma Pari: ${S_PARI}"
echo "Somma Dispari: ${S_DISPARI}"
