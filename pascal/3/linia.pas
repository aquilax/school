program linia;
uses Math;
const
  n = 3;
var
  p: array[1..n,1..2] of integer;
  i:integer;
  l:real;

function pow(num, exponent:integer):real;
begin
  pow := Exp( exponent * Ln(abs(num)) );
end;

function GetLength(x1, x2, y1, y2:integer):real;
begin
  GetLength := sqrt(pow(x2-x1, 2) + pow(y2-y1, 2));
end;

begin
  for i := 1 to n do
  begin
    Write('x', i, ' = ');
    ReadLn(p[i][1]);
    Write('y', i, ' = ');
    ReadLn(p[i][2]);
  end;
  l := 0;
  for i := 2 to n do
  begin
    l := l + GetLength(p[i][1], p[i-1][1], p[i][2], p[i-1][2]);
  end;
  WriteLn('Length is', l);
end.
