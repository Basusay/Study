program Project38;

const
  N = 5;
var
  a: array[1..N] of integer;
  i, k, kmax: integer;
begin
  randomize();
  for i := 1 to N do
    a[i] := random(40) - 20;
  for i := 1 to N do
    Write(a[i], ' ');
  Write();

  k := 0;
  kmax := 0;
  for i := 1 to N do
  begin
    if a[i] < 0 then
      k := k + 1
    else
      k := 0;
    if k > kmax then
      kmax := k;
  end;

  writeln(kmax);
  readln();
end.

