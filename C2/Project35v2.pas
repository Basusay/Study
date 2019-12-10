program Project35v2;

const
  N = 30;
var
  a: array[1..N] of integer;
  i, k : integer;
begin
  randomize();
  for i := 1 to N do
    a[i] := random(20);
  for i := 1 to N do
    write(a[i], ' ');
  writeln();

  k := 1;
  for i := 2 to N - 2 do
    if a[i] + a[i + 1] + a[i + 2] > a[k] + a[k + 1] + a[k + 2] then
      k := i;

  writeln(k, ' ', k + 1, ' ', k + 2);
  readln();
end.
