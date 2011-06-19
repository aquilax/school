program matrica;
const
  m = 5;
  n = 5;
var
  Z: array[1..m,1..n] of integer;
  v,i,j: integer;
begin
  for i := 1 to m do
  begin
    for j := 1 to n do
    begin
      Write('Enter:[', i, '][', j, ']: ');
      ReadLn(Z[i][j]);
    end;
  end;
  for i := 1 to m do
  begin
    v := Z[i][1];
    for j := 2 to n do
    begin
      if v <> Z[i][j] then
        break;
    end;
    if (j = n) then
    begin
      WriteLn('Row ', i, ' is full of ',v);
      break;
    end;
  end;
end.
