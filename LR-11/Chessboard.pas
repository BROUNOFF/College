program chessboard;

uses
  GraphABC;
  
  var a, i, b, c, d : integer;
begin
  setwindowsize(640,640);
  readln(a);
  readln(b);
  readln(c);
  readln(d);
  for i := 1 to 8 do begin
    line(a, b, c, d); 
    b := b + 80;
    d := d + 80
    end;
    readln(a);
    readln(b);
    readln(c);
    readln(d);
  for i := 1 to 8 do begin
    line(a, b, c, d); 
    a := a + 80;
    c := c + 80;
    end;
    readln(a);
    for i := 1 to 8 do begin
  floodfill(100,a,clblack);
  floodfill(250,a,clblack);
  floodfill(450,a,clblack);
  floodfill(570,a,clblack);
  a := a + 160;
  if a > 640 then
    break;
  end;
  readln(a); 
  for i := 1 to 8 do begin
  floodfill(60,a,clblack);
  floodfill(180,a,clblack);
  floodfill(370,a,clblack);
  floodfill(490,a,clblack);
  a := a + 160;
  if a > 640 then
    break;
  end;
  end.
  // 0 80 640 80
  // 80 0 80 640
   // 40
   // 100