longestRun:{[x]
    a:(where 1<>deltas cons) _ cons:{x where (1=deltas x)|1=next deltas x}/[x];
    a where cnt=max cnt:count each a
    }