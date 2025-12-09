to24h:{[x]
    t:([] st:x;tm:"V"$-3_'x);
    t2:update twlv:tm>12:00:00 from t;
    t3:update am:any each -2#'s in "A" from t2;
    t4:update tm+12:00:00 from t3 where (not twlv)&not am;
    t5:update tm-12:00:00 from t4 where twlv&am;
    t5`tm 
    }