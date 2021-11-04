#!/bin/bash

DATAHORA=$(date +%H:%M)
ARQUIVOALUNOS="/$HOME/CursoShellScript/CursoShellScript/arquivos/alunos2.txt"

# Função de Leitura de data e hora

#Mensagem para o log
echo "Iniciando o Script..." >> $LOG | logger -p local0.warn -t [$0]
logger -p local0.warn -t [$0] "Iniciando o Script também"

clear
echo "========== Meu Primeiro Script ============"
echo ""
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura de lista de alunos
echo "==========================================="
echo "Listagem dos Alunos: "
sort $ARQUIVOALUNOS | tee -a >(logger -p local0.warn -t [$0])  # Mostrando e jogando também no arquivo

DATAHORA=$(date +%H)
echo "=========================================="
echo "Nova Hora Atual: $DATAHORA"

# Mensagem de log
#echo "$(date) - Fim do Script... " >> $LOG
logger -p local0.warn -t [$0] "Fim do Script"
