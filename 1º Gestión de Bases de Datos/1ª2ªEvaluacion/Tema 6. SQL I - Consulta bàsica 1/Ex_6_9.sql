SELECT cod_a, descrip, preu, stock, stock_min, cod_cat
FROM article
WHERE descrip LIKE '%Bjc% %Olimp%' AND stock BETWEEN 2 AND 7;