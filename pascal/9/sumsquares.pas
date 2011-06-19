program sumsquares;
const 
  M = 8;
  N = 10;
var
  a: array[1..M, 1..N] of Integer;
  i,j: Integer;
  sum: Integer;

function sqrt(n:integer):integer;
begin
   sqrt := n*n;
end;

begin
  Randomize;
  for i := 1 to M do
  begin
    for j := 1 to N do
    begin
      a[i][j] := Random(30);
    end;
  end;
  sum := 0;
  for i := 1 to M do 
  begin
    for j := 1 to N do
    begin
      sum := sum + sqrt(a[i][j]);
    end;
  end;
  if (sum >= 10000) AND (sum < 100000) then
  begin
    WriteLn(sum, ' has 5 digits');
  end
  else
  begin
    WriteLn(sum, ' doesn''t have 5 digits');
  end;
end.
