var a, b, x, y, s : real;
i, h : integer;

begin

readln(x);
readln(y);
readln(s);

h:=trunc((y-x)/s);
for i:=1 to h do 
  begin;
  writeln('x = ', x+i/2, ' y = ', 2*x+i/2);  
  end;
end.
