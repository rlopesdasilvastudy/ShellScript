#!/bin/bash

ler () {
	read -p "Informe o Nome: " NOME
	read -p "informe o Sobrenome: " SOBRENOME
	return 10
}

ler
RETURNCODE=$?

echo $NOME $SOBRENOME
