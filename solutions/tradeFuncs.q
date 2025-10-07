tradeFill:{[size;orders]
    rems:size -\ orders;
    rems[where rems>0]:0;
    res:orders+rems;
    res[where res<0]:0;
    res}

/ 
Alternative solution using while loops:

tradeFill:{[size;orders] 
    n:0;
    while[size>orders[n];size:size-orders[n];n:n+1];
    while[size<orders[n];orders[n]:size;size:0;n:n+1];
    orders}

/
Kieran feedback
tradeFill:{deltas x&sums y}
