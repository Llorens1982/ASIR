SELECT *
FROM article
WHERE descrip LIKE '%Pulsador%'  AND preu BETWEEN 2 AND 4 AND stock > stock_min;