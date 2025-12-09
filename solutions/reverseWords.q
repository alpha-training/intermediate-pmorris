reverseWords:{
    abc:.Q.A,.Q.a,"'";
    L:(where differ x in abc)_x;
    m:mod[til count L;2];
    idx:$[first L[0] in abc;not m;m];
    L[n]:reverse L n:where idx;
    raze L
    }

rw:{
    v:first x in abc:.Q.A,.Q.a,"'";
    t:([] L:(where[differ x in abc])_x);
    t:update m:mod[i;2] from t;
    t2:update Lb:first first L in abc from t;
    t3:update b:m<>Lb from t2;
    t4:update reverse L from t3 where b;
    raze t4`L
    }