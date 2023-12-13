create or replace view d05_prodotto_vw as
select 
       p.id,
      tp.tipo_prodotto,
       p.prodotto,
       p.prezzo_acquisto,
       p.prezzo_vendita
  from d05_prodotto p
  join d05_tipo_prodotto tp
    on p.tipo_prodotto_id = tp.id
