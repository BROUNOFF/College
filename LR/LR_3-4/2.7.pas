program twopointseven;

var i, N : integer;
length, width, area, totalarea, S : real;

begin
  Readln(N);
  totalarea := 0;
  i := 1;
  while i<=N do begin
    writeln(i);
    readln(length);
    writeln(i);
    readln(width);
    area := length * width;
    i := i+1;
    writeln(area);
    S := S+area;
  end;
  writeln('totalarea = ', S);
  
end.