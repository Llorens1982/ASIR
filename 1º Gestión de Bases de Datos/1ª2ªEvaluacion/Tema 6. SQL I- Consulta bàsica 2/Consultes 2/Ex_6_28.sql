SELECT cod_a, descrip, preu, stock, stock_min, cod_cat
FROM article
ORDER BY cod_cat, stock, preu DESC;