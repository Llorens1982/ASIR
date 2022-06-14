SELECT article.cod_a, article.descrip, SUM(COALESCE(linia_fac.quant,0))
FROM article LEFT JOIN linia_fac on linia_fac.cod_a = article.cod_a
GROUP BY article.cod_a
