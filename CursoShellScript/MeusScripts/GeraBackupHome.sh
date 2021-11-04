#!/bin/bash

######################################################################
#
# Nome: GeraBackupHome.sh
#
# Autor: Rafael Lopes da Silva
# Data: 08/02/2021
# 
# Descrição: O script realiza backup compactado do diretório home 
#			 do usuário que executar o script
# Uso: ./GeraBackupHome.sh
#
#######################################################################



DIRDEST=$HOME/Backup

# Testar se o diretório de destino Já existe
if [ ! -d $DIRDEST ]
then
	echo "Criando Diretório $DIRDEST... "
	mkdir -p $DIRDEST
fi

DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz) # usando scape \ para o *

if [ "$DAYS7" ] # Testa se a variável é nula. Atenção nas aspas duplas
then
	echo "Já foi gerado um backup do diretório $HOME nos últimos 7 dias."
	echo -n "Deseja continuar? (N/s): "
	read -n1 CONT                 # captura somente uma tecla do que for digitado quando usa -n1
	echo
	if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
	then
		echo "Backup Abortado"
		exit 1
	elif [ $CONT = S -o $CONT = s ]
	then
		echo "Será criado mais um backup para a mesma semana"
	else
		echo "Opção Inválida"
		exit 2
	fi
fi

echo "Criando Backup..."
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"
tar zcvpf $DIRDEST/$ARQ --absolute-name --exclude="$HOME/Google  Drive" --exclude=$HOME/shared --exclude="$DIRDEST" "$HOME"/* > /dev/null
# tar zcvpf $DIRDEST/$ARQ --exclude"$DIRDEST" "$HOME/* > /dev/null
echo
echo "O backup de  nome \""$ARQ"\" foi criado em $DIRDEST"
echo
