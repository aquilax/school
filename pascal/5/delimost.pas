program delimost;
var
  N:Integer;
begin
  Write('Enter numer: ');
  ReadLn(N);
  if (N mod 5 = 0) then
  begin
    WriteLn(N, ' divides by 5');
    if (N mod 15 = 0) then
    begin
      WriteLn(N, ' divides by 15');
    end;
  end;
end.
