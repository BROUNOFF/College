program LReleven;

uses
  GraphABC;
  
begin
  Setwindowsize(1000,1000);
  Setbrushcolor(clred);
  Circle(250,500,50);
  line(300,500,700,500);
  Setbrushcolor(clyellow);
  Circle(700,500,50);
  line(300,500,475,400);
  line(475,400,650,500);
  line(300,500,475,600);
  line(475,600,650,500);
  floodfill(500,550,cllime);
  floodfill(475,450,clblue);

end.