\p 5050
\e 1

\d .u

T:`trade`quote
N:100
S:`JPM`GE`IBM
C:T!(`time`sym`price;`time`sym`bid`ask)
l:0Ni			/ handle to the log file, null to start with
w:()!()

initLog:{  
  L::hsym `$"logs/tp",string[.z.d],".log";
  l::hopen L;
 }

/ fill in your code from previous exercises
upd:{[t; x] 
    i+:1;
    tbl:([] C[t]!x);
    l enlist (t;x); 
  }

/ fill in your code from previous exercises
sub:{[t;s]
  $[11=type t;.z.s each t;w[t]::distinct w[t],.z.w]
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