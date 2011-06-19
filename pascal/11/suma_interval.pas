program suma_interval;
const
  N = 40;
var
  m: array[0..N] of integer;
  min, max, sum, i:integer;
begin
  for i := 1 to N do
    m[i] := Random(10);
  Write('Enter min: ');
  ReadLn(min);
  write('Enter max: ');
  ReadLn(max);
  sum := 0;
  for i := 1 to N do
    if (m[i] < min) OR (m[i] > max) then
      sum := sum + m[i];
  WriteLn('The sum is ', sum);
end.
