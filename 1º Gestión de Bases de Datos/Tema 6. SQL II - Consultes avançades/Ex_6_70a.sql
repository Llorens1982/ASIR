SELECT poble.nom FROM poble,client
WHERE poble.cod_pob=client.cod_pob
UNION
SELECT poble.nom from poble, venedor
WHERE poble.cod_pob=venedor.cod_pob
GROUP BY poble.nom
ORDER BY 1;