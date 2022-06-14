SELECT MAX (maxim) 
from ( select cod_cli, count (num_f) as maxim 
	  from factura 
	  group by cod_cli)
	  as s ;