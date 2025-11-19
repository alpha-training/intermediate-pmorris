genSyms:{[n]
    append:{raze flip (x,\:/:.Q.A)};
    getString:append/[n-1;.Q.A];
    `$/:getString
    }