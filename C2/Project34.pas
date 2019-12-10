program Project34;

uses
  Math;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, x, y: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(20);
  for i := 1 to N do
    write(a[i], ' ');
  Writeln();

  x := 0;
  y := 20;
  for i := 1 to N do
  begin
    x := max(x, a[i]);
    y := min(y, a[i]);
  end;

  writeln(x - y);
  readln();
end.
