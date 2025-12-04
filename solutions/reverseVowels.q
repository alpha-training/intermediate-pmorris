reverseVowels:{[x]
    a:x;isCapA:a in .Q.A;
    x[vInd]: reverse x[vInd: where vBool:x in "AEIOUaeiou"];
    b:@[x;where vBool&isCapA&not isCapX:x in .Q.A;upper];
    @[b;where vBool&isCapX&not isCapA;lower]
    }