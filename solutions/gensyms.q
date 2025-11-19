genSyms:{[n]
    append:{raze flip (x,\:/:.Q.A)};
    getString:append/[n-1;.Q.A];
    `$/:getString
    }

\
Speed Comparison of genSyms vs genSyms2 (alf)

q)(genSyms 4)~(genSyms2 4)
1b

q)\t genSyms 3
5
q)\t genSyms 5
3101

q)\t genSyms2 3
2
q)\t genSyms2 5
1295