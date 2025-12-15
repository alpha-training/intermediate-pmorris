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

/\l /home/pmorris/code/intermediate-alf/infer.q_


unit:enlist`s`result`expected!(::;::;::)
ufx:{`unit insert(enlist x;enlist infer x;enlist y);}
uf:{ufx[x;get x]}

uf"10"
uf"10f"
uf"10 20"
uf"1.5 7"
uf"4.5 -7"
uf"5 6h"
uf"50 6f"
uf"23:59"
uf"2025.12.14"
uf"2025.12.14D20"
uf"2025.12.14D10 2025.12.14D11"
uf"`JPM"
uf"`JPM`GE"
uf"23:58 23:59"
uf"23:58:00 23:59"
ufx[enlist"hey";enlist"hey"]
ufx[();()]
ufx[::;::]
ufx[100;100]
ufx["a";"a"]
ufx["0;exit 0";("0;exit";0)]
ufx[":data/path";`:data/path]
ufx["data/path";"data/path"]
ufx["John123";"John123"]
ufx["exit 1";("exit";1)]
ufx["D:100000000";"D:100000000"]
ufx[`size`price`sym!("10";"4.5";"`JPM");`size`price`sym!(10;4.5;`JPM)]
ufx[enlist`size`price`sym!("10";"4.5";"`JPM");enlist`size`price`sym!(10;4.5;`JPM)]

delete from`unit where s~'(::);

\c 200 200

if[count err:select from unit where not result~'expected;show err];
if[`D in system"v";0N!"ERROR - D has been defined"];