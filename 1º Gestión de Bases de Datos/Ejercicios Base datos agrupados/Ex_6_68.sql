SELECT * 
FROM ARTICLE a
WHERE a. preu > (SELECT AVG (preu)
                 FROM ARTICLE
				 WHERE cod_cat= a.cod_cat)
ORDER BY cod_cat, cod_a