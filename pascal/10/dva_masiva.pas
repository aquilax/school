program dva_masiva;
const 
  N = 5;
  M = 25;
var 
  a: array[1..N,1..N] of integer;
  b: array[1..M] of integer;
  i, j:integer;
begin
  for i := 1 to N do
    for j := 1 to N do
      a[i][j] := 50 - Random(100);
  for i := 1 to N do
    for j := 1 to N do
      if (a[i][j] >= -10) AND (a[i][j] <= 15) then
        b[(i-1)*5+j] := a[i][j];
  for i := 1 to M do
    if b[i] <> 0 then
      WriteLn(i,':', b[i]);
end.
