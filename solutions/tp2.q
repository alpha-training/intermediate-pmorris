\l solutions/schema.q
\l solutions/event.q
\p 5010
\e 1

\d .u
t:tables`.
w:t!()
l:0Ni
i:0

ld:{[d]  
  L::hsym `$"logs/tp",string d;
  if[() ~ key L;L set ()];
  if[not null l;@[hclose;l;::]];
  l::hopen L;
  i::count read0 L;
  -1"Initialised log: ",(string L), " with ",(string i), " records";
 }

/ delete subscription
/ x=table name, y=handle
del:{[x;y]
    w[x]:w[x] where not (y in/:w[x]);
 }

/ select from table (only give subscriber what they want)
/ x=table data, y=sym(s) or `
sel:{[x;y]
    $[y~`;x;x where x[`sym] in y]
 }
 
/ add subscription
/ x=table name, y=sym(s) or `
add:{[x;y]
    w[x],:enlist (.z.w;y);
 }

pub:{[t;x]{[t;x;w]if[count x:sel[x]w 1;neg[first w](`upd;t;x)]}[t;x]each w t}

sub:{if[x~`;:sub[;y]each t];if[not x in t;'x];del[x;.z.w];add[x;y]}

pc:{del[;x]each t}

end:{neg[union/[w[;;0]]]@\:(`.u.end;x)}

upd:{[t;x]
	i+:1;
    c:key flip get t;	/ same as calling cols, but works from a child namespace
	pub[t;$[0>type first x;enlist;flip]c!x];
    l enlist (`upd;t;flip c!x)
	}

tick:{
	t::tables`.;
    w::t!();
	d::.z.d;
	ld d;		/ call ld
 }

/ 
/ simulate feed
.z.ts:{
	T:rand t;
	n:1+rand 1000;
    S:`AAPL`BP`COST`DIS`EBAY;
	a:(n#.z.p;n?S),$[T=`trade;1#n;2#n]?\:100f;
	upd[T;a];
 }
\

\d .

.u.tick[];
.event.add[`.z.pc;`.u.pc];
\t 1000