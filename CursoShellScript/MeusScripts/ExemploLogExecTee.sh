#!/bin/bash

DATAHORA=$(date +%H:%M)
ARQUIVOALUNOS="$HOME/CursoShellScript/CursoShellScript/arquivos/alunos2.txt"

# Arquivo de log
LOG=$HOME/CursoShellScript/MeusScripts/log_interno.out
# Usando exec - Dentro do script, se diz que a saídas devem ser colocadas no arquivo de log 
exec 1>> >(tee -a "$LOG")
exec 2>&1

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
sort $ARQUIVOALUNOS  

DATAHORA=$(date +%H)
echo "=========================================="
echo "Nova Hora Atual: $DATAHORA"

# Mensagem de log
echo "$(date) - Fim do Script... " >> $LOG
