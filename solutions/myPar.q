myPar:{[d;p;t] / myPar[`:db;2025.01.01;`trade]  
    a:@[read0;` sv d,`par.txt;d];
    part:$[a~d;hsym a;hsym `$a mod[p;count a]];
    ` sv part,`$string p,t
 }

/
k){[d;p;t]`/:($[@!h:`/:d,`par.txt;`$":",h .q.mod[p;#h:0:h];d];`$$p;t)}

d:`:db;p:2025.01.01;t:`trade;h:`/:d,`par.txt;