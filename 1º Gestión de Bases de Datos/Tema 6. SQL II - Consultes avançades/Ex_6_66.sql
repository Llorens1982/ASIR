SELECT s.trim, MAX(countfac)
FROM (SELECT cod_ven,TO_CHAR(data,'Q')as trim, COUNT(num_f) as countfac
FROM factura
GROUP BY cod_ven,TO_CHAR(data,'Q')) as s
GROUP BY s.trim
ORDER BY s.trim
