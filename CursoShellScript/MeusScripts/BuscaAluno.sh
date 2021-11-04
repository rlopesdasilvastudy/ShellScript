#!/bin/bash

#######################################################
#
# BuscaAluno.sh - Procurar nome completo do aluno     #
#
# Autor: Rafael Lopes da Silva
# Data: 07/02/2021
#
# Descrição: Script de exemplo para o comando read
#            a partir de uma entrada do usuário, será
#            feita a busca no arquivo alunos2.txt
#
# Exemplo de uso: ./BuscaAlunos.sh
#
#######################################################

ARQALUNOS="$HOME/CursoShellScript/CursoShellScript/arquivos/alunos2.txt"

clear
echo "============= Script de Busca de Alunos ==============="
echo ""
#echo -n "Por favor, informe o nome do aluno: "
#read ALUNO
#read -p "Por favor, informe o nome do aluno: " ALUNO

if test $# -gt 0
then
	ALUNOCOMPLETO=$(grep "$1" "$ARQALUNOS")
	echo "O nome completo do aluno é: "$ALUNOCOMPLETO""
else
	echo "Informe o nome do aluno como parâmetro"
fi

#ALUNOCOMPLETO=$(grep "$ALUNO" $ARQALUNOS)

echo ""
#echo "O nome completo do aluno é $ALUNOCOMPLETO"
echo ""
echo "Fim do Script"
