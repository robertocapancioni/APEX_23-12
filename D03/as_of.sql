select PRODOTTO_ID,PRODOTTO,MARCHIO_ID,PRODOTTO_COD,PREZZO,TAGS,GENERE,DATA_RILASCIO 
  from d03_prodotti as of timestamp sysdate-5/24/60
 where prodotto = 'Duramo 10'
