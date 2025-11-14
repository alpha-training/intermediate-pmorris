#include "k.h"

K ctil(K x) {
    J n = x->j;              

    K out = ktn(KJ, n);      
    for (J i = 0; i < n; i++)
        kJ(out)[i] = i;      

    return out;
}
