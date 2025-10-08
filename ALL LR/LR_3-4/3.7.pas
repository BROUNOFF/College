program third;

var a, b, c : integer;

begin 
  a:=1;
  b:=2;
  c:=3;
  repeat
    writeln('хирург = ', a);
    writeln('невропатолог = ', b);
    writeln('терапевт = ', c);
    a:=a+3;
    b:=b+3;
    c:=c+3;
  until a>12;
end.