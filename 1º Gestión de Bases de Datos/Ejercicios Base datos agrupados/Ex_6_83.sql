CREATE TABLE FACTURA
(num_f NUMERIC PRIMARY KEY,
data DATE ,
cod_cli NUMERIC CONSTRAINT nn_codcli NOT NULL,
cod_ven NUMERIC,
iva NUMERIC,
 dte NUMERIC,
CONSTRAINT ce_cli_fa FOREIGN KEY (cod_cli) REFERENCES CLIENT,
CONSTRAINT ce_cod_ven FOREIGN KEY (cod_ven) REFERENCES VENEDOR)