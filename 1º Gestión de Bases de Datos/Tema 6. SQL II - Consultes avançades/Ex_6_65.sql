SELECT MAX(total), MIN(total)
FROM (SELECT num_f, SUM(quant * preu) as total
FROM linia_fac
GROUP BY num_f) as s