#!/bin/bash

if (( $I <= $MAX )); then
	echo $$
	((I=I+1))
	./figlio.sh;
fi
