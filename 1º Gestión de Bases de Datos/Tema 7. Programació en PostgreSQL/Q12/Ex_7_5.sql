CREATE OR REPLACE FUNCTION MAX3(numeric, numeric,numeric) RETURNS numeric AS 
$CUERPO$
BEGIN
RETURN  greatest (max2($1,$2),$3);
END;
$CUERPO$
LANGUAGE 'plpgsql';