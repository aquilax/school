program longest_string;
const 
  stop = 'Q';
var
  c, longest:String;
begin
  longest := '';
  repeat
    ReadLn(c);
    if Length(c) > Length(longest) then
      longest := c
  until (c = stop);
  WriteLn('Longest string is: ', longest);
end.
