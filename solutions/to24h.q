to24h:{[x]
    t:([] s:s;tm:tm;L:(any each s in "A") + 2*12:00:00<tm:"V"$-3_'s);
    t:update tm+12:00:00 from t where L=0;
    t:update tm-12:00:00 from t where L=3;
    t`tm
    }