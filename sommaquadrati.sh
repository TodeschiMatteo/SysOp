#!/bin/bash

SUM=0
INDEX_SUM=0

for (( INDEX_SUM=1; INDEX_SUM<=$#; INDEX_SUM=${INDEX_SUM}+1 )); do
	(( SUM=${SUM}+${!INDEX_SUM}*${!INDEX_SUM}-${INDEX_SUM} ))
done

echo "${SUM}"
