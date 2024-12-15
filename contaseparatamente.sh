#!/bin/bash

if (( $# == 0 )); then
	echo "pochi argomenti"
	exit 1
fi

if (( $# > 9 )); then
	echo "troppi argomenti"
	exit 1
fi

NPARI=0
NDISPARI=0

for (( i=1; i<=$#; i++ )); do
	RIGHE=`wc -l ${!i}`
	RIGHE=${RIGHE%% *}
	if (( i%2 == 0 )); then
		(( NPARI=NPARI+RIGHE))
	else
		(( NDISPARI=NDISPARI+RIGHE))	
	fi
done

echo "${NPARI}" >&1
echo "${NDISPARI}" >&2

exit 0
