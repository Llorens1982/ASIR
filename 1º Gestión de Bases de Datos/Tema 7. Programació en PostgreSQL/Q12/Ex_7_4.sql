CREATE OR REPLACE FUNCTION MAX2(numeric ,numeric) RETURNS numeric AS 
$CUERPO$
BEGIN
RETURN  greatest ($1,$2);
END;
$CUERPO$
LANGUAGE 'plpgsql';