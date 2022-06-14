SELECT cod_cat, COUNT (*)
FROM article 
WHERE preu>100 
GROUP BY cod_cat 
HAVING COUNT (*) >1;
