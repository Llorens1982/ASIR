SELECT p1.cod_ven, p1.nom, COUNT (p2.cod_cap)
FROM venedor p1 , venedor p2
WHERE (p1.cod_ven=p2.cod_cap)
GROUP BY p1.cod_ven
ORDER BY p1.cod_ven;