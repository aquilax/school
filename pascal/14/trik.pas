program trik;

uses Math;

var
  a,b,c:real;
  hp, surface:real;

begin
  Write('Enter side a: ');
  ReadLn(a);
  Write('Enter side b: ');
  ReadLn(b);
  Write('Enter side c: ');
  ReadLn(c);
  if ((a+b>c) AND (b+c>a) AND (c+a >b)) then
  begin
    hp := (a+b+c)/2;
    surface := sqrt(hp*(hp-a)*(hp-b)*(hp-c));
    WriteLn('The surface is: ', surface);
  end
  else
  begin
    WriteLn('Cannot make triangle with these');
  end;
end.
