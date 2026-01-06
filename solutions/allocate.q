allocate:{
    diff:x-sum fdec:floor dec:x*y%sum y;
    fdec[a]:1+fdec[a:where (iasc dec-fdec)<diff];
    fdec
    }

\l /home/pmorris/code/intermediate-alf/allocate.q_