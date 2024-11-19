#!/bin/bash

NUM=$#

while (( ${NUM} > 0 )); do
	echo "Argomento ${NUM}: ${!NUM}"
	(( NUM=${NUM} - 1 ))
done
