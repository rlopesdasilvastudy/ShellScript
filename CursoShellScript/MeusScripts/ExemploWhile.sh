#!/bin/bash

clear
read -p "Informe o limite de processos: " MAXIMO

while [ $(ps axu | wc -l) -le $MAXIMO ]
do
	echo "Tudo OK"
	echo "Processos Atuais: $(ps axu | wc -l)"
	sleep 3
	echo
done

echo "Limite de processos excedido"
echo "Por favor, verifique o sistema"
