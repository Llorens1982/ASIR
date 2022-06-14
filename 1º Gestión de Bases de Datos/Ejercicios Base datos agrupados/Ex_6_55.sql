SELECT f.num_f, f.data, f.cod_cli, 
SUM (l.quant*l.preu) AS "import" ,  
SUM ((l.quant*l.preu)-(l.quant*l.preu*(COALESCE(l.dte,0)/100))) AS "descompte 1"
FROM factura f, linia_fac l 
WHERE f.num_f=l.num_f 
GROUP BY f.num_f 
ORDER BY 1;