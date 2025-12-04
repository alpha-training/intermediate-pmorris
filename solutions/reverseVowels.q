reverseVowels:{[x]
    isCap:x in .Q.A;
    x[vInd]: reverse x[vInd: where vBool:x in vowels:"AEIOUaeiou"];
    a:@[x;where vBool&isCap;upper];
    @[a;where vBool&not isCap;lower]
    }