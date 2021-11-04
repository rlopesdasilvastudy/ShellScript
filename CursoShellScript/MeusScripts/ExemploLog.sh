#!/bin/bash

DATAHORA=$(date +%H:%M)
ARQUIVOALUNOS="$HOME/CursoShellScript/CursoShellScript/arquivos/alunos2.txt"

# Arquivo de log
LOG=$HOME/CursoShellScript/MeusScripts/log_interno.out

# Função de Leitura de data e hora

#Mensagem para o log
echo "$(date) - Iniciando o Script..." >> $LOG

clear
echo "========== Meu Primeiro Script ============"
echo ""
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura de lista de alunos
echo "==========================================="
echo "Listagem dos Alunos: "
sort $ARQUIVOALUNOS | tee -a $LOG # adicionando essa mensagem ao LOG 

DATAHORA=$(date +%H)
echo "=========================================="
echo "Nova Hora Atual: $DATAHORA"

# Mensagem de log
echo "$(date) - Fim do Script... " >> $LOG
