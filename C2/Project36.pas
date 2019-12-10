program Project36;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, k, kMax: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(20);
  for i := 1 to N do
    Write(a[i], ' ');

  kMax := 1;
  k := 1;
  for i := 2 to N do
  begin
    if a[i] = a[i - 1] then
      k := k + 1
    else
      k := 1;
    if k > kMax then
      kMax := k;
  end;

  writeln(kMax);
  readln();
end.
