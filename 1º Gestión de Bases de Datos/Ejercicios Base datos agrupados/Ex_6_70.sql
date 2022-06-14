SELECT client.nom,'client'
FROM client inner join factura on factura.cod_cli=client.cod_cli
WHERE TO_CHAR(factura.data,'Q')='1'
UNION
SELECT venedor.nom,'venedor'
FROM factura inner join venedor on venedor.cod_ven=factura.cod_ven 
WHERE TO_CHAR(factura.data,'Q')='1'
ORDER BY 1;
