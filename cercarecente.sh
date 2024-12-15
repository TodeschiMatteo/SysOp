#!/bin/bash

FILES=`find /usr/include/linux/ -mindepth 2 -name "*.h" -print`
if [[ -z ${FILES} ]] ; then
	echo "No File"
else
# assegno a RECENTE il primo nome di file
	for RECENTE in ${FILES} ; do
		break
	done
	for NAME in ${FILES} ; do
		if [[ ${RECENTE} -ot ${NAME} ]] ; then
			RECENTE=${NAME}
		fi
	done
fi

echo "Il file piu' recente e' ${RECENTE}"
