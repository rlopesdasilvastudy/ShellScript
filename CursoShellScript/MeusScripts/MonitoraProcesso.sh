#!/bin/bash

TIME=5

if [ $# -eq 0 ]
then
	echo "Favor Informar um processo como argumento"
	echo "./MonitoraProcesso.sh <processo>"
	exit 1
fi

while true
do
	# Esse PS exclui tanto o próprio GREP quanto o Script que está sendo executado pois ambos possuem a palavra firefox
	if ps axu | grep $1 | grep -v grep | grep -v $0 > /dev/null
	then
		sleep $TIME
	else
		echo "ATENÇÃO! O processo $1 não está em execução"
		sleep $TIME
	fi
done
