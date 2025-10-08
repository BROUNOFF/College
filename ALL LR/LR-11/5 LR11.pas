program LR15;

uses
  GraphABC;
  
  var x, i, y, r : integer;
  
begin
  SetwindowSize(700,600);
  writeln('Введите x, y и радиус');
  readln(x);
  readln(y);
  readln(r);
  for i := 1 to x do begin
  Circle(x,y,r);  
  SetPenColor(rgb(random(256), random(256), random(256)));
  Setbrushcolor(clrandom);
    x := x + 60;
    y := y + 40;
    r := r + 10;
  end;
end.
