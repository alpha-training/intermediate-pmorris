longestRun:{[x]
    splCons:(where differ 1=0N-':x)_x;
    cons:noSing where 1=last each deltas each noSing:splCons where (1<>count each splCons);
    n:cons c?max c:count each cons;
    (-1+n 0),n
    }

longestRun3:{[x]
    t:([] v:x;b:1=0N-':x);
    t2:select from t where b|next b,not[b]|not next b;
    t3:update spn:v-prev v from t2;
    t4:select from t3 where b,spn=max spn;
    $[0=(val:first t4`v)-span:first t4`spn;til val+1;n except where (n:1+til val)<=val-span]
    }

longestRun4:{[x]
    t:([] v:x;b:1=0N-':x);
    t2:select from t where b<>next b;
    t3:update spn:v-prev v from t2;
    t4:select from t3 where b,spn=max spn;
    start:(first t4`v)-span:first t4`spn;
    start+til span+1
    }