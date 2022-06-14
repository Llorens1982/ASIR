SELECT cod_ven, cod_cli, count (*)
FROM factura
GROUP BY cod_ven, cod_cli;