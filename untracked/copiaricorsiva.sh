#!/bin/bash

# Controlla che siano stati passati due argomenti
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <origine> <destinazione>"
    exit 1
fi

# Variabili per directory di origine e destinazione
SRC_DIR="$1"
DEST_DIR="$2"

# Controlla che la directory di origine esista
if [ ! -d "$SRC_DIR" ]; then
    echo "Errore: la directory di origine '$SRC_DIR' non esiste."
    exit 1
fi

# Crea la directory di partenza se non esiste
if [ ! -d "$DEST_DIR" ]; then
    mkdir "$DEST_DIR"
fi

# Usa find per cercare i file .txt non vuoti e copiarli
find "$SRC_DIR" -type f -name "*.txt" | while read FILE; do
	if [[ ! -e "${DEST_DIR}/$(basename $FILE)" ]]; then
			cp "${FILE}" "${DEST_DIR}"
		fi
done

exit 0

for FILE in in "$SRC_DIR"/*; do
	if [[ -f "${FILE}" ]]; then
		EXT="${FILE##*.}"
		if [[ ${EXT} == "txt" ]]; then
			if [[ ! -e "${DEST_DIR}/$(basename $FILE)" ]]; then
				cp "${FILE}" "${DEST_DIR}/"
			fi
		fi
	elif [[ -d  "${FILE}" ]]; then
		SUBDIR_NAME=$(basename "$FILE")
		"$0" "${FILE}" "${DEST_DIR}"
	fi
done
