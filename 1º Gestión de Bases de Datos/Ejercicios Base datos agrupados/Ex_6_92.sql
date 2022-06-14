CREATE OR REPLACE VIEW RESUM_FACTURA AS
SELECT f.num_f, f.data, f.cod_cli, 
sum (l.quant*l.preu) as "import" ,  
sum ((l.quant*l.preu)-(l.quant*l.preu*(COALESCE(l.dte,0)/100))) as "descompte 1",
sum (((l.quant*l.preu)-(l.quant*l.preu*(COALESCE(l.dte,0)/100)))
     -(((l.quant*l.preu)-(l.quant*l.preu*(COALESCE(l.dte,0)/100)))*(COALESCE(f.dte,0)/100))) as "descompte 2"
from factura f, linia_fac l 
where f.num_f=l.num_f group by f.num_f 
order by 1;