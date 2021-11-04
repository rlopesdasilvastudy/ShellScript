#!/bin/bash

##################################################
#
# PrimeiroScript.sh - Script de Exemplo do Curso
#
# Autor: Rafael Lopes da Silva
# Data de criação: DD/MM/YYYY
#
# Descrição: Script de exemplo que lê a data e hora atual e exibe a lista de alunos
#
# Exemplo de uso: ./PrimeiroScript.sh
#
#Alterações:
#        Dia X: Inclusão da Função de Ordenação
#        Dia Y: Correção da Funçãod de Leitura
#
#################################################

DATAHORA=$(date +%H:%M)
ARQUIVOALUNOS="$HOME/CursoShellScript/CursoShellScript/arquivos/alunos2.txt"

# Função de Leitura de data e hora
clear
echo "========== Meu Primeiro Script ============"
echo ""
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura de lista de alunos
echo "==========================================="
echo "Listagem dos Alunos: "
sort $ARQUIVOALUNOS

DATAHORA=$(date +%H)
echo "=========================================="
echo "Nova Hora Atual: $DATAHORA"
