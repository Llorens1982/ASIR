SELECT poble.nom FROM poble, venedor
WHERE poble.cod_pob=venedor.cod_pob
EXCEPT
SELECT poble.nom FROM poble,client,venedor
WHERE poble.cod_pob=client.cod_pob
GROUP BY poble.nom
ORDER BY 1;