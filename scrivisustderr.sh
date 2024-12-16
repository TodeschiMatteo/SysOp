#!/bin/bash

while read RIGA; do
	echo "${RIGA%% *}" >&2
	echo "Evviva" >&1
done
