#!/bin/bash

read -p "Por favor, informe o primeiro valor a ser somado: " SOMA1

read -p "Por favor, informe o segundo valor a ser somado: " SOMA2

echo "A soma de $SOMA1 + $SOMA2 é $(expr $SOMA1 + $SOMA2)"

# Funciona também 
RESULTADO=$((SOMA1+$SOMA2))

echo "O resultado é: $RESULTADO"
