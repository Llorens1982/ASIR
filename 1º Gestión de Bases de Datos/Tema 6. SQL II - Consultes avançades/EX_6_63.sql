SELECT c.cod_cat, c.descripcio, COUNT(DISTINCT a.cod_a), SUM(l.quant)
FROM (article a INNER JOIN categoria c ON c.cod_cat = a.cod_cat)
     LEFT JOIN linia_fac l ON l.cod_a = a.cod_a
GROUP BY c.cod_cat, c.descripcio
HAVING COUNT(DISTINCT a.cod_a) > 15
ORDER BY COUNT(a.cod_cat) desc;
