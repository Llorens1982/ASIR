SELECT f.num_f, f.data, f.cod_cli, 
SUM (l.quant*l.preu) as "import" ,  
SUM ((l.quant*l.preu)-(l.quant*l.preu*(COALESCE(l.dte,0)/100))) AS "descompte 1",
SUM (((l.quant*l.preu)-(l.quant*l.preu*(COALESCE(l.dte,0)/100)))
     -(((l.quant*l.preu)-(l.quant*l.preu*(COALESCE(l.dte,0)/100)))*(COALESCE(f.dte,0)/100))) as "descompte 2"
FROM factura f, linia_fac l 
WHERE f.num_f=l.num_f 
GROUP BY f.num_f
ORDER BY 1;