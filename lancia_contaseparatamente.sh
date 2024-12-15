#!/bin/bash

#VAR=($(ls -S1 /usr/include/*.h))
#source ./contaseparatamente.sh "${VAR[@]:0:6}" >&2

./contaseparatamente.sh `ls -S1 /usr/include/*.h | head -n 7` >&2

exit 0
