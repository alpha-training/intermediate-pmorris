/ queryTable1.q
N:10
trade:([]date:2025.11.01+asc N?N;sym:N?`JPM`GE`IBM;size:100*1+N?10)

queryTable:{[t;c]
    dtCol:`date in cols t;
    dtCns:any ccol:`date in'c;
    if[dtCol&not dtCns;:"A date constraint must be present"];
    if[dtCol&dtCns;:?[t;c;0b;()]];
    if[dtCns|not dtCol;:?[t;c where not ccol,();0b;()]]
    }