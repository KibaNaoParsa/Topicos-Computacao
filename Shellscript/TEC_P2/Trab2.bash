#!/bin/bash

# Elyas Correa Nogueira
# Israel Mateus Melo Oliveira

echo "Insira o nome (ou endereço) do arquivo a ser analisado: "
read arquivo

nome=$(cat $arquivo | cut -f2 -s | head -n1 | cut -c7- | cut -d"<" -f1)
nome=${nome::-4}
echo "Nome do prédio: $nome"

coordenadas=$(cat $arquivo | cut -f7 -s | tr " " "\n")
numero=$(cat $arquivo | cut -f7 -s | tr " " "\n" | wc -w)
numero=$(($numero-1))

coordx=0
coordy=0

for i in $(seq 1 $numero)
do
	valor=$i"p"
	coordp=$(cat $arquivo | cut -f7 -s | tr " " "\n" | cut -d"," -f1 -s | sed -n $valor)
	coordx=$(bc <<< "$coordx + $coordp")

	coordp=$(cat $arquivo | cut -f7 -s | tr " " "\n" | cut -d"," -f2 -s | sed -n $valor)
	coordy=$(bc <<< "$coordy + $coordp")

done

coordx=$(echo "$coordx / $numero" | bc -l)
coordy=$(echo "$coordy / $numero" | bc -l)
echo "Coordenadas do centro do prédio:"
echo $coordx
echo $coordy
