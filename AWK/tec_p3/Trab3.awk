#!/usr/bin/awk -f

BEGIN { ocorrencia[360] = 0; soma[360] = 0; 
	for ($i = 0; $i < 360; $i++) {
		ocorrencia[$i]=0;
		soma[$i]=0;
	}
}
{ 
	if (NR > 2) {
		ocorrencia[$9]++;
		soma[$9]+=$10;
	}
}
END { for ($i = 0; $i < 360; $i++) {
	if (ocorrencia[$i]!=0)
		print "Direção: "$i"º - Velocidade média: "soma[$i]/ocorrencia[$i]" m/s";
      }
}

