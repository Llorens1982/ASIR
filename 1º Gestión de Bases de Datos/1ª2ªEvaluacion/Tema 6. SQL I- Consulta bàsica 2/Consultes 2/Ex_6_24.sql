SELECT cod_a, COUNT(*), AVG(quant) 
FROM linia_fac
GROUP BY cod_a
HAVING COUNT(*) > 2;