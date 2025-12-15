.conf.data:"/disk01/dev"
.conf.name:`tp0

.qi.tostr:{$[0=count x;"";0=t:type x;.z.s each x;t in -10 10h;x;string x]}

expand:{[x]
    if[not x like "*$*";:x];
    confVars:"$",/:.qi.tostr 1_key .conf;
    L:(where not x in .Q.an)_x;
    L[v]:.qi.tostr .conf`$1_'L[v:where L in confVars];
    if[any n:L like "$*";
        L[where n]:`MISSING;
        L:.qi.tostr L];
    raze L
    }