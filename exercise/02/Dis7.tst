load Dis7.hdl,
output-file Dis7.out,
compare-to Dis7.cmp,
output-list x%B3.1.3 y%B3.1.3 z%B3.1.3 w%B3.1.3 d%B3.1.3;

set x 0,
set y 0,
set z 0,
set w 0,
eval,
output;

set x 0,
set y 0,
set z 0,
set w 1,
eval,
output;

set x 0,
set y 0,
set z 1,
set w 0,
eval,
output;

set x 0,
set y 0,
set z 1,
set w 1,
eval,
output;

set x 0,
set y 1,
set z 0,
set w 0,
eval,
output;

set x 0,
set y 1,
set z 0,
set w 1,
eval,
output;

set x 0,
set y 1,
set z 1,
set w 0,
eval,
output;

set x 0,
set y 1,
set z 1,
set w 1,
eval,
output;

set x 1,
set y 0,
set z 0,
set w 0,
eval,
output;

set x 1,
set y 0,
set z 0,
set w 1,
eval,
output;