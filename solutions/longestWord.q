longestWord:{[x]
    words:" " vs x;
    cnt:count each words;
    first words where cnt = max cnt
    }