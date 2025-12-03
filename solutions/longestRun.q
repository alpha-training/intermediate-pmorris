longestRun:{[x]
    splCons:(where differ 1=0N-':x)_x;
    cons:noSing where 1=last each deltas each noSing:splCons where (1<>count each splCons);
    n:cons c?max c:count each cons;
    (-1+n 0),n
    }

longestRun3:{[x]
    t:([] idx:til count x;v:x;b:1=0N-':x);
    t2:select from t where (1=b)|1=next b;
    t3:select from t2 where ((not b)|not next b);
    t4:update spn:idx-prev idx from t3;
    t5:select from t4 where b,spn=max spn;
    n except where (n:1+til first t5`v)<=(first (t5`v)-t5`spn)
    }

\l /home/pmorris/code/intermediate-alf/longestRun.q_
L:1 2 3,(5?10),4 5 6 7 8 9,5?10
x:5000000?30