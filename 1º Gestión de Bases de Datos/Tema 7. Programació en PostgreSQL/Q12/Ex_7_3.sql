CREATE OR REPLACE FUNCTION Taula_mult(numeric) RETURNS void AS 
$CUERPO$
BEGIN
RAISE NOTICE 'TAULA DE MULTIPLICAR';
RAISE NOTICE '====================';
For i In 1..10 loop
RAISE NOTICE '% x % = %' ,$1,i, i*$1;
END LOOP;
END;
$CUERPO$
LANGUAGE 'plpgsql';