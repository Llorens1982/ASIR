SELECT num_f, SUM(preu * quant)
FROM linia_fac
GROUP BY num_f;