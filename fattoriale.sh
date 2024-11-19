#!/bin/bash

RIS=1
COUNT=1
while (( ${COUNT} <= $1 )); do
	(( RIS=${RIS}*${COUNT} ))
	(( COUNT=${COUNT} + 1 ))
done
echo "{$RIS}"
