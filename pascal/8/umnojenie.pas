program umnojenie;
  var num: integer;
  var i:integer;
  var ans:integer;
begin
  Write('Enter number: ');
  ReadLn(num);
  for i := 1 to 10 do
  begin
    Write(num, '*', i, '=');
    ReadLn(ans);
    if (num*i = ans) then
      WriteLn('Correct')
    else
      WriteLn('Wrong! ', num, '*', i, '=',num*i);
  end;
end.
