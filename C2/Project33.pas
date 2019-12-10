program Project33;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, j, b, c : integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(20);
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  b := 1;
  c := 2;
  for i := 1 to N - 1 do
    for j := i + 1 to N do
      if abs(a[i] - a[j]) < abs(a[b]-a[c]) then
      begin
        b := i;
        c := j;
      end;

  writeln(a[b], ' ', a[c]);
  readln();
end.
