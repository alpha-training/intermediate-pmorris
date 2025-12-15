infer:{[x]
    if[":"~first x;:`$x];
    if[99=type x;:(key x)!get each get x];
    if[98=type x;:(::)];
    if["/"~first @[parse;x;{x}];:x];
    $[1<>count @[parse;x;{x}];
        $[not type parse x;@[get;;{x}]each string parse x;:@[get;x;{x}]];
        :@[get;x;{x}]]
    }
