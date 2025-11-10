\l solutions/schema.q
\l solutions/event.q
\p 5010

\d .u
t:tables`.
w:t!()

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
	c:key flip get t;	/ same as calling cols, but works from a child namespace
	pub[t;$[0>type first x;enlist;flip]c!x];
	}

\d .

.event.add[`.z.pc;`.u.pc];