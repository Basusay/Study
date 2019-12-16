program Project34;

uses
  Math;

const
  N = 5;
var
  a: array [1..N] of integer = (5, 10, 12, 19, 8);
  i, x, y, k: integer;
  found: boolean;

begin
  //randomize();
  //for i := 1 to N do
    //a[i] := random(40) - 20;
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  k := 0;
  found := False;
  for i := 1 to N do
    if a[i] mod 2 = 0 then
      if found then
        continue
      else
      begin
        if k = 0 then
        begin
          x := a[i];
          y := a[i];
          k := 1;
        end
        else
        begin
          x := max(x, a[i]);
          y := min(y, a[i]);

        end;
      end;


  writeln(x - y);
  readln();
end.
