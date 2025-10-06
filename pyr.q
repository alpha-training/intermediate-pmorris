/P:1+(1+til 5)?'10

pyr:{[P]
    n:-2+count P;
    findMaxRow:{[P;row;col] P[row;col]+(P[row+1;col]|P[row+1;col+1])};
    P[n]:findMaxRow[P;n;] each til n+1;P:(n+1)#P];
    }

pyr:{[P] 
    findMaxPyr:{[n;P] 
        findMaxRow:{[P;row;col] P[row;col]+(P[row+1;col]|P[row+1;col+1])}; 
        if[n>=0;P[n]:findMaxRow[P;n;] each til n+1;n:n-1;.z.s[n]];P[0;0]}; 
    findMaxPyr[-2+count P;P]}

/
pyr:{[P]
    findMaxPyr:{[n;P] 
        findMaxRow:{[P;row;col] P[row;col]+(P[row+1;col]|P[row+1;col+1])};
        if[n>=0;P[n]:findMaxRow[P;n;] each til n+1;n:n-1;.z.s[n;P]];P[0;0]};
    findMaxPyr[-2+count P;P]}

/
test pyramid:
P:(enlist 10;1 10;2 10 3;4 5 10 6)