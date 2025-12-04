reverseVowels:{[x]
    isCap:x in .Q.A;
    isLow:x in .Q.a;
    x[vInd]: reverse x[vInd: where vBool:x in vowels:"AEIOUaeiou"];
    a:@[x;where isCap&vBool;upper];
    @[a;where isLow&vBool;lower]
    }