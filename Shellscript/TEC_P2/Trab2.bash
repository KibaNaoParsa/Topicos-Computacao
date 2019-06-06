#!/bin/bash

arquivo="cefetmg_pavilhao_1.kml"

nome=$(cat $arquivo | cut -f2 -s | head -n1)
echo $nome

coordenadas=$(cat $arquivo | cut -f7 -s)
echo $coordenadas
