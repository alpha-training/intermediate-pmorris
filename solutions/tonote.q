tostr:{$[0=count x;"";0=t:type x;.z.s each x;t in -10 10h;x;string x]}

tonote:{[x;y]
    s:tostr x;
    t:tostr y;
    n:" ",/:(s,\:"="),'t;
    1_raze n}