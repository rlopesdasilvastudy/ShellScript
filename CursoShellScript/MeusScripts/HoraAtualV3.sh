#!/bin/bash

HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)

#IF para definir período
# Das 00:00 as 06:00 é noite
echo
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
	echo "Bom Dia"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
	echo "Boa Tarde"
else
	echo "Boa Noite"
fi

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
