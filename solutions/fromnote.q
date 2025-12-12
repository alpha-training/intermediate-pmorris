tostr:{$[0=count x;"";0=t:type x;.z.s each x;t in -10 10h;x;string x]}

tonote:{1_raze (" ",/:tostr[x],\:"="),'tostr y}

fromnote:{
    L:flip "=" vs'(" " vs x);
    (`$L 0)!L 1
    }