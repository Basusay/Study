program Project39;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, j, k, imax, kmax: integer;
begin
  randomize();
  for i := 1 to N do
    a[i] := random(100);
  for i := 1 to N do
    write(a[i], ' ');
  Writeln();

  kmax := 0;
  imax := 0;
  for i := 1 to N do
  begin
    k:=0;
    for j := 1 to a[i] do
      if a[i] mod j = 0 then
        k := k + 1;
    if k > kmax then
    begin
      kmax := k;
      imax := i;
    end;
  end;

  writeln(imax);
  readln();
end.
