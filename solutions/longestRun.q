longestRun:{[x]
    splCons:(where differ 1=0N-':x)_x;
    cons:noSing where 1=last each deltas each noSing:splCons where (1<>count each splCons);
    n:cons c?max c:count each cons;
    (-1+n 0),n
    }