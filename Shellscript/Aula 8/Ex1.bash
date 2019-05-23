#!/bin/bash

echo "Deseja saber as informações do sistema? (S/N)"
read RES
test $RES = "N" && exit
test $RES = "S" && df && who | cut -d " " -f1
