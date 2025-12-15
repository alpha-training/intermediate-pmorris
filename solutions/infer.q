infer:{[x]
    if[":"~first x;:`$x];
    if[any 98 99 in type[x];.z.s each x];
    if[10<>abs type[x];:x];
    if[1=count x;:x];
    if["`"=first x;:get x];
    if[not all x in .Q.an,"-`:;. ";:x];
    $[not type parse x;
        .z.s each x;
        @[get;x;{x}]]
    }

\l /home/pmorris/code/intermediate-alf/infer.q_