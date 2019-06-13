#!/usr/bin/awk -f

BEGIN { print "Ano\tAluno" }
{ if ($3 == 1999)  print $3 "\t" $2 }
END { print "--- FIM ---" }
