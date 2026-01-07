/ ca.q

Trade:([]date:1995.01.01 2000.01.02 2000.02.02 2000.03.02 2000.04.02 2000.05.01;sym:`IBM;price:100f;size:100)
Trade,:update sym:`JPM from Trade

CA:([]date:2000.01.01 2000.02.01 2000.03.01 2000.04.01;sym:`IBM;typ:`split`dividend`bonus`dividend;factor:.5 .98 .8 .97)
CA,:update sym:`JPM,factor-.01 from CA

adjust:{[x;types]
  s:distinct x`sym;
  ca:select from CA where sym in s;
  ca:update idx:i from ca;
  if[not types~`all;ca:select from ca where typ in types];
  n:aj[`sym`date;x;ca];
  n:update factor:1^factor from n;
  n:update typ:reverse fills reverse typ from n;
  n:update newEv:factor*differ idx from n;
  n:update newEv:?[0=newEv;1;newEv] from n;
  n:update rfactor:reverse prds reverse next newEv by sym from n;
  n:update vol:price*size from n;
  n:update price:price*rfactor from n;
  n:update size:vol%price from n;
  n:delete `idx`newEv`vol from n
  }