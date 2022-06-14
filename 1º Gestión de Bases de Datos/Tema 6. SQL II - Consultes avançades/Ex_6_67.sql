SELECT *
FROM article
WHERE preu > (SELECT AVG(preu)
			  FROM article)
ORDER BY cod_cat, cod_a;
