SELECT cod_ven, COUNT (num_f) 
FROM factura 
WHERE cod_ven IS NOT NULL 
GROUP BY cod_ven 
ORDER BY count LIMIT 1;