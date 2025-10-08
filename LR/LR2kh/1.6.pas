program onepointsix;

var N : integer;

begin
  
  readln(N);     
  writeln(((N div 1000) <> (N div 100 mod 10)) and ((N div 1000) <> (N div 10 mod 10)) and ((N div 1000) <> (N mod 10)) and ((N div 100 mod 10) <> (N div 10 mod 10)) and ((N div 100 mod 10) <> (N mod 10)) and ((N div 10 mod 10) <> (N mod 10)))
 
 
end.