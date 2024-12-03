SI=0
while read RIGA ; do
	if (( ${SI} == 0 )) ;
		then echo "${RIGA}";
		SI=1
	else
		SI=0
	fi
done
