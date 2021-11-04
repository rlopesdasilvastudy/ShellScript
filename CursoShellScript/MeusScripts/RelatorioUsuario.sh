#!/bin/bash

#######################################################
#
# Nome: RelatorioUsuario.sh
#
# Autor: Rafael Lopes da Silva
# Data: 07/02/2021
# 
# Descrição: O script gera um relatório com informações de
#            um usuário do sistema informado como parâmetro
#
# Uso: ./RelatorioUsuario.sh <usuario>
#
#######################################################

# ls /home/$1 > /dev/null 2>&1 || echo "Usuario Inexistente"
# ls /home/$1 > /dev/null 2>&1 || exit 1

# Para realizar mais de um comando através do OU || - utilizar {} assim dois comandos podem ser executados, separados por ;
ls /home/$1 > /dev/null 2>&1 || { echo "Usuario Inexistente" ; exit 1; }

USERID=$(grep $1 /etc/passwd | cut -d":" -f3)
DESC=$(grep $1 /etc/passwd | cut -d":" -f5 | tr -d ,)
USOHOME=$(du -sh /home/$1 | cut -f1)

clear
echo "==============================================================="
echo "Relatório do Usuário: $1"
echo
echo "UID: $USERID"
echo "Nome ou Descrição: $DESC "
echo
echo "Total Usado no /home/$1: $USOHOME"
echo
echo "Ultimo Login:"
lastlog -u $1
echo "==============================================================="
exit 0
