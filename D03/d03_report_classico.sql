-- Alerts
select ID,
       CLIENTE  as alert_title,
       ZONA_CLIENTE    as alert_desc,
       IMPORTO     as alert_action,
       case 
           when IMPORTO < 100               then 'info'
           when IMPORTO between 200 and 300 then 'success'
           when IMPORTO between 300 and 400 then 'warning'
           else                                'danger' 
       end    as alert_type
  from D03_VENDITA;

  -- Media List
select ID,
       PRODOTTO as LIST_TEXT,
       CLIENTE as LIST_TITLE,
       IMPORTO ||' - '|| QUANTITA as LIST_BADGE,
       case
         when ZONA_CLIENTE = 'NORD' then 'fa fa-cutlery'
         when ZONA_CLIENTE = 'CENTRO' then 'fa fa-truck'
         else 'fa fa-trophy'
       end  as ICON_CLASS,
       case
         when IMPORTO < 100 then 'u-color-1'
         when IMPORTO < 200 then 'u-color-5'
         when IMPORTO < 400 then 'u-color-7'
         else 'u-color-8'
       end as ICON_COLOR_CLASS
  from D03_VENDITA

    -- Cards
  select ID,
       PRODOTTO as CARD_TEXT,
       CLIENTE as CARD_TITLE,
       IMPORTO ||' - '|| QUANTITA as CARD_SUBTEXT,
       case
         when ZONA_CLIENTE = 'NORD' then 'fa-cutlery'
         when ZONA_CLIENTE = 'CENTRO' then 'fa-truck'
         else 'fa-trophy'
       end  as CARD_ICON,
       case
         when IMPORTO < 100 then 'u-color-1'
         when IMPORTO < 200 then 'u-color-5'
         when IMPORTO < 400 then 'u-color-7'
         else 'u-color-8'
       end as CARD_COLOR
  from D03_VENDITA

  -- Comments
select ID,
       PRODOTTO || ' Bla bla bla ...' as COMMENT_TEXT,
       CLIENTE as USER_NAME,
	   DATA as COMMENT_DATE,
       IMPORTO ||' - '|| QUANTITA as ACTIONS,
       case
         when ZONA_CLIENTE = 'NORD' then 'u-color-1 fa fa-cutlery'
         when ZONA_CLIENTE = 'CENTRO' then 'u-color-5 fa fa-truck'
         else 'u-color-7 fa fa-trophy'
       end  as ICON_MODIFIER,
       null as USER_ICON,
       null as ATTRIBUTE_1,
       null as ATTRIBUTE_2,
       null as ATTRIBUTE_3,
       null as ATTRIBUTE_4
  from D03_VENDITA
  
  -- Badge List
select 
 ID,
 DATA,
 PRODOTTO,
 CLIENTE,
 ZONA_CLIENTE,
 QUANTITA,
 IMPORTO
 from D03_VENDITA
