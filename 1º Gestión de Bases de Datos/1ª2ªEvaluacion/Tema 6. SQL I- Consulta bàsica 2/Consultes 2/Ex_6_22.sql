SELECT TO_CHAR(data,'Q'),COUNT (*)
FROM factura
GROUP BY TO_CHAR(data,'Q');