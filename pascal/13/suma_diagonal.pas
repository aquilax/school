program suma_diagonal;
const
  n = 30;
var
  A: array[1..n,1..n] of integer;
  i,j,sum:integer;
begin
  for i := 1 to n do
    for j := 1 to n do 
      A[i][j] := Random(10);
  sum := 0;
  for i := 1 to n do
    for j := i to n do 
    begin
      if i < j then
        sum := sum + A[i][j];
    end;
  WriteLn('The sum is: ', sum);
end.
