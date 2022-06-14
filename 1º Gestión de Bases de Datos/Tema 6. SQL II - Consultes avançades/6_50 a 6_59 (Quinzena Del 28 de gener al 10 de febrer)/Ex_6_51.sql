SELECT client.nom, factura.num_f, data 
FROM client, factura 
WHERE client.cod_cli = factura.cod_cli 
ORDER BY nom,data ;