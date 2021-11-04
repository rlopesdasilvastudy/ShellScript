#!/bin/bash

clear
read -p "Informe o inicio da sequência: " INICIO
read -p "INforme o final da sequência: " FINAL

for i in $(seq "$INICIO" "$FINAL")
do
	echo "Exibindo o valor $i"
	sleep 1
done
