
SELECT client.nom , COUNT (factura.num_f) AS "Numero de factures" 
FROM CLIENT, FACTURA 
WHERE client.cod_cli=FACTURA.cod_cli 
GROUP  BY client.nom 
ORDER BY "Numero de factures" DESC ;
