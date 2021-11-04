#!/bin/bash

for i in $HOME/CursoShellScript/CursoShellScript/arquivos/*
do
	if [ -f $i ]
	then	
		echo "Verificando o arquivo $i"
		LINHAS=$(cat $i | wc -l)
		echo "O arquivo $1 contém $LINHAS linhas. "
	fi
done
