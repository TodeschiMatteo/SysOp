#!/bin/bash

for lett in {c..g}; do
	for file in /usr/include/?${lett}*; do
		if [[ -e ${file} && ( ${#file} -lt 18 || ${#file} -gt 23 ) ]] ; then
			echo ${file}
		fi
	done
done
