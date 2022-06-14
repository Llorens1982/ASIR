SELECT a.cod_a, a.descrip, 
COUNT (l.num_f), 
SUM (l.quant) 
---avg l.quant
FROM article a, linia_fac l
WHERE (a.cod_a=l.cod_a) 
GROUP BY a.cod_a
ORDER BY 4 DESC, 1 ASC;