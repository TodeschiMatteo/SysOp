#!/bin/bash

while read RIGA; do
	TERZOeQUARTO=${RIGA#\"*\"*\"*\"}
	TERZO=${TERZOeQUARTO%*\"*\"}
	echo MOTIVO is ${TERZO}
done < cadutevic2.txt
