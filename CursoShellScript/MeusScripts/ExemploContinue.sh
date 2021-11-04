#!/bin/bash

read -p "Qual o(a) melhor Aluno(a): " MELHOR

for i in $(cat $HOME/CursoShellScript/CursoShellScript/arquivos/alunos3.txt)
do
	if [ $i = $MELHOR ]
	then
		echo "A $i é o(a) melhor aluno(a)"
		continue
	fi
	echo "Aluno(a): $i"
done 
