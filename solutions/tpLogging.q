\p 5050
\e 1

\d .u

T:`trade`quote
N:100
S:`JPM`GE`IBM
C:T!(`time`sym`price;`time`sym`bid`ask)
l:0Ni			/ handle to the log file, null to start with
w:T!()

initLog:{  
  L::hsym `$"logs/tp",string[.z.d],".log";
  if[() ~ key L;system"mkdir logs";L set ()];
  if[not null l;@[hclose;l;::]];
  l::hopen L;
  i::count read0 L;
  -1"Initialised log: ",(string L), " with ",(string i), " records";
 }

/ fill in your code from previous exercises
upd:{[t;x] 
    i+:1;
    tbl:flip C[t]!x;
    neg[w t]@\:(`upd;t;tbl);
    l enlist (`upd;t;tbl)
  }

/ fill in your code from previous exercises
sub:{[t;s]
  a:$[t=`;T;t];
  / @[`w;a;union;.z.w]; / This should work but it gives me a type error?
  w[a]:w[a] union' .z.w;
  ((i;L);"snapshot")
 }

/ take from elsewhere
.z.pc:{-1"Handle disconnected:",string x;w::w except'x;}

/ saves us having to use a dummy feed
.z.ts:{
	t:rand T;
	n:1+rand N;
	a:(n#.z.p;n?S),$[t=`trade;1#n;2#n]?\:100f;
	upd[t;a];
 }

initLog[];
\t 1000