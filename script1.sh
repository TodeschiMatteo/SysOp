#!/bin/bash

NUM=1

while (( ${NUM} <= $# )); do
	echo "Argomento ${NUM}: ${!NUM}"
	(( NUM=${NUM} + 1 ))
done

./script2.sh "$@"
