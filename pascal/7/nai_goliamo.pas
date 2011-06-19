program nai_goliamo;
const 
  N = 5;
var
  m: array[1..N] of integer;
  i, v: integer;
begin
  for i := 1 to N do
  begin
    Write('Enter numer ', i, ': ');
    ReadLn(m[i]);
  end;
  v := m[1];  
  for i := 2 to N do
  begin
    if (v < m[i]) then
    begin
      v := m[i];
    end;
  end;
  WriteLn('The biggest number is: ', v);
end.
