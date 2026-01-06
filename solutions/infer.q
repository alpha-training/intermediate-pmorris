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

/
infer2:{
  if[(t:type x)in 0 98 99h;:.z.s each x];
  if[t<>10;:x];
  if[a~inter[a:-1_x]v:.Q.n," .:-";:get x];
  if[" "in x;:.z.s each" "vs x];
  if[x[0 10]like"[1-2]D";if[not null p:"P"$x;:p]];
  $[":"=x 0;`$x;0=s:sum x="`";x;"`"<>x 0;x;`$1_$[s=1;x;"`"vs x]]
  }