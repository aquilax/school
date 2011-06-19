program masiv_40;
const
  MAX = 40;
var
  A: array[1..MAX] of integer;
  i:integer;
begin
  for i := 1 to MAX do
  begin
    Write('Enter #', i, ': ');
    ReadLn(A[i]);
  end;
  WriteLn('Now correcting');
  for i:= 1 to MAX do
  begin
   Write('#', i, ' old: ', A[i]);
   if (A[i]<0) then
     A[i] := 2
   else if (A[i]>0) then
     A[i] := A[i] + 3
   else
     A[i] := i;
   WriteLn('new: ', A[i]);
  end;
end.
