#!/bin/bash

USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$USUARIO" ]
then
	echo "O usuario exite"
	if [ "$USUARIO" = rafael ]
	then
		echo "OK"
	fi
else
	echo "O usuario não existe"
fi
