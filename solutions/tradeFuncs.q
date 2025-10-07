tradeFill:{[size;orders] 
    n:0;
    while[size>orders[n];size:size-orders[n];n:n+1];
    while[size<orders[n];orders[n]:size;size:0;n:n+1];
    orders}