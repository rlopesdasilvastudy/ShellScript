#!/bin/bash

HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)

#Usando CASEo
# Das 00:00 as 06:00 é noite
echo

case $HORA in
	0[6-9] | 1[01])
		echo "Bom Dia"
		;;
	1[2-7])	
		echo "Boa Tarde"
		;;
	*)
		echo "Boa Noite"
		;;
esac	

# IF para definir AM/PM

if [ $HORA -ge 12 ]
then
	AMPM=PM
	if [ $HORA -ne 12 ]
	then
		HORA=$(expr $HORA - 12)
	fi
else
	AMPM=AM
fi

echo
echo "A hora atual é : $HORA:$MIN:$AMPM"
