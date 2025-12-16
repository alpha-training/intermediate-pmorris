infer:{[x]
    if[":"~first x;:`$x];
    if[type[x] in 0 98 99h;:.z.s each x];
    if[10<>abs type[x];:x];
    if[1=count x;:first @[get;x;{x}]];
    if["`"=first x;:get x];
    if[not all x in .Q.an,"-`:;. ";:x];
    $[not type parse x;
        $[" "in x;:.z.s each " "vs x;:x];
        @[get;x;{x}]]
    }

\l /home/pmorris/code/intermediate-alf/infer.q_