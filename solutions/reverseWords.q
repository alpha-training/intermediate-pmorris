reverseWords:{
    abc:.Q.A,.Q.a,"'";
    L:(where differ x in abc)_x;
    m:mod[til count L;2];
    idx:$[first L[0] in abc;not m;m];
    L[n]:reverse L n:where idx;
    raze L
    }