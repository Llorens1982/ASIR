SELECT * FROM poble
WHERE cod_pob IN (SELECT cod_pob FROM client)
AND cod_pob NOT IN (SELECT cod_pob FROM venedor)
ORDER BY cod_pob;
