#!/bin/bash

V=$((4 + 5))
echo $V



V=$(echo "5*3.5" | bc)
echo $V



V=$(echo "5 / 3.5" | bc -l)




if [ 5 -gt 3 ]
then
	echo "5 é maior que 3"
fi

if [ 5 -lt 3 ]
then
	echo "5 é menor que 3"
else
	echo "5 não é menor que 3"
fi

echo $V

#echo "Insira dois números"
#read v1
#read v2

#if [ $v1 -gt $v2 ]
#then
#	echo "$v1 é maior"
#elif [ $v1 -eq $v2 ]
#then
#	echo "os dois são iguais"
#else
#	echo "$v2 é maior"
#fi




for val in {1..5}; do echo $val; done
for val in $(seq 1 5); do echo $val; done



while [ -f trava ]; do echo "Estou travado!"; sleep 1; done
