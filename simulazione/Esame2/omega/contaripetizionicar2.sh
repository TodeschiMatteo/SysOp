#!/bin/bash

for (( i=0; i<${#1}; i++ )); do
	echo "${1:i:1}"
done | sort | uniq -c | sed 's/ *//' | while read PR SC; do
	echo "$SC $PR"
done
