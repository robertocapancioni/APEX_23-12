select NAZIONE,
         sum(REVENUE_2020/1000000)
                   as REVENUE_2020
    from d04_classifica_ft
group by NAZIONE
order by REVENUE_2020 desc

select NAZIONE,SETTORE
         sum(REVENUE_2020/1000000)
                   as REVENUE_2020
    from d04_classifica_ft
group by NAZIONE,SETTORE
