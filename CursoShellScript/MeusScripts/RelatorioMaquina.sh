#!/bin/bash

#######################################################
#
# Nome: RelatorioMaquina.sh
#
# Autor: Rafael Lopes da Silva
# Data: 07/02/2021
#
# Descrição: o script gera um relatório com as principais
#            informações do servidor
#
# Uso: ./RelatorioMaquina.sh
#
#######################################################

KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo | grep "model name" | wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' ' | cut -d: -f2 | tr -d kB) / 1024) # em MB
FILESYS=$(df -h | egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear
echo "=================================================================="
echo "relatório da máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "=================================================================="
echo
echo "Máquina ativa desde: $UPTIME"
echo
echo "Versão do Kernel: $KERNEL"
echo
echo "CPUs"
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo
echo "Memória Total: $MEMTOTAL MB"
echo
echo "Partições: "
echo "$FILESYS"
echo
echo "=================================================================="

