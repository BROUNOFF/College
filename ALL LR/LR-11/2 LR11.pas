program LRtwelve;

uses
  GraphABC;
  
begin
  Setwindowsize(1000,1000);
  Setbrushcolor(clblue);
  Circle(250,200,30);
  line(255,230,360,500);
  line(270,224,471,390);
  line(450,500,515,180);
  Setbrushcolor(clred);
  Circle(515,170,30);
  line(520,200,600,500);
  line(572,390,780,220);
  Setbrushcolor(cllime);
  Circle(800,200,30);
  line(790,229,705,500);
  line(360,500,705,500);
  floodfill(400,450,clblue);
  floodfill(560,450,clred);
  floodfill(650,480,cllime);
end.