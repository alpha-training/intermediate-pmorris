.conf.data:"/disk01/dev"
.conf.name:"tp0"

.qi.tostr:{$[0=count x;"";0=t:type x;.z.s each x;t in -10 10h;x;string x]}

expand:{[x]
    if[x like "*$data*";x:ssr[x;"$data";.conf.data]];
    if[x like "*$name*";x:ssr[x;"$name";.conf.name]];
    L:(where not x in .Q.an)_x;
    L[where L like "$*"]:`MISSING;
    L:.qi.tostr L;
    raze L
    }