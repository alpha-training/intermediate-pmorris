longestRun:{[x]
    splCons:(where differ 1 = 0N-':x)_x;
    cons:splCons where 1=last each deltas each splCons;
    n:cons c?max c:count each cons;
    (-1+n 0),n
    }