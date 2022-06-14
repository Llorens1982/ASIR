SELECT cod_a, descrip, preu, COALESCE (stock,0) AS "stock", COALESCE (stock_min,0) AS "stock_min", cod_cat INTO ARTICLE_36 
FROM article;

