L:`:data/tp2025.03.01
loginfo:1!([] table:`quote`trade;chunks:(;);rows:(;))

upd:{$[x=`quote;qCount+:1;tCount+:1];x upsert flip y};
-11!L;
update chunks:(qCount;tCount),rows:count each (quote;trade) from `loginfo

qCount:0;tCount:0;