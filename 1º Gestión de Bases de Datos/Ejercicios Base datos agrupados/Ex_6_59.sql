SELECT categoria.cod_cat, categoria.descripcio, SUM (linia_fac.quant)
FROM article, categoria, linia_fac
WHERE  linia_fac.cod_a=article.cod_a AND  article.cod_cat=categoria.cod_cat --and sum>=100
GROUP BY categoria.cod_cat
having SUM(linia_fac.quant)>100
ORDER BY 3 DESC;