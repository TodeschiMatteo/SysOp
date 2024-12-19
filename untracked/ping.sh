#!/bin/bash

# Inizializzo
if [[ -e "pong.txt" ]]; then
	rm pong.txt
fi
echo "" > "ping.txt"

# Avvio il secondo processo
./pong.sh &
PID=$!
trap "kill $PID; exit" SIGINT SIGTERM

while (( 1 )); do
	if [[ ! -e "pong.txt" ]]; then
		echo "" > "ping.txt"
		echo "${0}"
		rm "ping.txt"
		sleep 1
	fi
	sleep 2
done
