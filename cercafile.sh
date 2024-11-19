#!/bin/bash

for lett in {c..g}; do
	for file in /usr/include/?${lett}*; do
		if [[ -e ${name} && ( ${#name} -lt 18 || ${#name} -gt 23 ) ]]; then
			echo ${name}
		fi
	done
done
