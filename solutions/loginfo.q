L:`:data/tp2025.03.01
loginfo:{[L]
    upd::{$[x=`quote;qCount+:1;tCount+:1];x upsert flip y};
    -11!L;
    1!([] table:`quote`trade;chunks:(qCount;tCount);rows:count each (quote;trade))
    }

qCount:0;tCount:0;