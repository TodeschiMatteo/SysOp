#!/bin/bash

for file in `ls -1`; do
	echo "File is ${file} : ";
	ls -ld ${file};
	if (( $? != 0 ));
	then echo "ls produce un errore";
	fi;
done
