SELECT poble.cod_pob, poble.nom, COUNT(client.cod_cli)
FROM poble left join client on client.cod_pob = poble.cod_pob
GROUP BY poble.cod_pob
ORDER BY COUNT(client.cod_cli) desc;
