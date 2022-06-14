SELECT cod_ven, COUNT (*)
FROM factura 
WHERE TO_CHAR(data,'Q') > '2' AND TO_CHAR(data,'YYYY') ='2015' 
GROUP BY cod_ven 
ORDER BY COUNT (*) desc;
