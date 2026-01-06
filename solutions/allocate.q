allocate:{
    diff:x-sum fdec:floor dec:x*y%sum y;
    fInd:dd?diff#desc dd:dec-fdec;
    fdec[fInd]:fdec[fInd]+1;
    fdec
    }