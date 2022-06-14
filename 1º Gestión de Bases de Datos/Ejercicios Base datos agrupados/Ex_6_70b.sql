select poble.nom from poble,client,venedor
where poble.cod_pob=client.cod_pob
intersect
select poble.nom from poble, venedor
where poble.cod_pob=venedor.cod_pob
group by poble.nom
order by 1;