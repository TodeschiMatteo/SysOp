#!/bin/bash

INVERTITA=""
while read LINE; do
	INVERTITA="${LINE}\n${INVERTITA}"
done < "${1}"

echo -e "${INVERTITA}"
