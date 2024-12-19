#!/bin/bash

# Sfaso di 1 secondo per avere output più fluido
sleep 1

# Inizio il ciclo
while (( 1 )); do
	if [[ ! -e "ping.txt" ]]; then
		echo "" > "pong.txt"
		echo "${0}"
		rm "pong.txt"
		sleep 1
	fi
	sleep 2
done

