SELECT client.cod_cli, client.nom
FROM CLIENT LEFT JOIN FACTURA on factura.cod_cli = client.cod_cli
WHERE  FACTURA IS NULL;