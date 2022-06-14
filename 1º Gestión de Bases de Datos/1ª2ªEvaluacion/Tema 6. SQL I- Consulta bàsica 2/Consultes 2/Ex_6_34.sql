SELECT cod_pob, COUNT (cod_cli) 
FROM client 
GROUP BY cod_pob 
ORDER BY count desc LIMIT 3;