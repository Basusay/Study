program Project37;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, l, lmax, s, smax: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(20);
  for i := 1 to N do
    Write(a[i], ' ');

  l := 1;
  s := a[1];
  lmax := 0;
  for i := 2 to N do
  begin
    if a[i] > a[i - 1] then
    begin
      l := l + 1;
      s := s + a[i];
    end
    else
    begin
      l := 1;
      s := a[i];
    end;
    if l > lmax then
    begin
      lmax := l;
      smax := s;
    end;
  end;

  writeln(smax);
  readln();
end.
