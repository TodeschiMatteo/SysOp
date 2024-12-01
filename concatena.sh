#!/bin/bash

echo -n "" > output.txt
for FILE in /usr/include/std*; do
	if [[ -e ${FILE} ]]; then
		if exec {FD}<{FILE} ; then
			NUM=0
			while read -u ${FD} LINE; do
				(( NUM=${NUM}+1))
				if (( $NUM > 1 )); then
					echo "${LINE}" >> output.txt
				fi
				if (( $NUM > 4 )); then
					break;
				fi
				exec {FD}>&-
			done
		fi
	fi
done
