program matrica_diagonal;
const 
  n = 10;
var
  a: array[1..n,1..n] of integer;
  i,j: integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      if i = j then
        a[i][j] := 0
      else 
        a[i][j] := Random(9);
      Write(a[i][j],' '); 
    end;
    WriteLn();
  end;
end.
