longestWord:{[x]
    words:" " vs x;
    cnt:count each words;
    first words where cnt=max cnt
    }

longestWordOpt:{[x]
    first words where cnt=max cnt:count each words:" " vs x
    }