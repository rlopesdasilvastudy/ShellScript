#!/bin/bash

case "$1" in
	[0-9])
		echo "O parâmetro é um número"
		;;
	[A-Z])
		echo "O parâmetro é uma letra maiuscula"
		;;
	[a-z])
		echo "O parâmetro é uma letra minuscula"
		;;
	*)
		echo "O parâmetro é um caractere especial"
esac 
