tostr:{$[0=count x;"";0=t:type x;.z.s each x;t in -10 10h;x;string x]}

tonote:{1_raze (" ",/:tostr[x],\:"="),'tostr y}

fromnote:{[x]
    s:x;
    s[where s="="]:" ";
    L:`$" " vs s;
    d:string (L where not a)!L where a:mod[til count L;2]
    }