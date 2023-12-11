apex.submit({request:"CREATE",
             set:{"P3_DATA":"11/12/2023",
                  "P3_PRODOTTO":"Mele",
                  "P3_CLIENTE":"Mario Rossi",
                  "P3_ZONA_CLIENTE":"CENTRO",
                  "P3_QUANTITA":"100",
                  "P3_IMPORTO":"200,50",
                }
            });

apex.submit({request:"SAVE",
             set:{"P3_CLIENTE":"Luigi Bianchi"}
            });

apex.submit({request:"DELETE"});