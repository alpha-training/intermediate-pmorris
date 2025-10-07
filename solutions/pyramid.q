/P:1+(1+til 5)?'10

pyr:{[P] 
    findMaxPyr:{[n;P] 
        findMaxRow:{[P;row;col] P[row;col]+(P[row+1;col]|P[row+1;col+1])};
        while[n>=0;P[n]:findMaxRow[P;n;] each til n+1;n:n-1];P[0;0]}; 
    findMaxPyr[-2+count P;P]}

pyr2:{first{y+(1_x)|-1_x}/[reverse x]}

/
test pyramid:
pt:(enlist 10;1 10;2 10 3;4 5 10 6)