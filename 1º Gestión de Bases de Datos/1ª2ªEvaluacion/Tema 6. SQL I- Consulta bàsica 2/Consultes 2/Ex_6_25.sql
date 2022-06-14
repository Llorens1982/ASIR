SELECT cod_pob, COUNT (*)
FROM client
GROUP BY cod_pob
HAVING COUNT(cod_cli) BETWEEN 3 AND 8;