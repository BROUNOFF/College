unit Dragon;

interface

procedure DrawDragon(x1, y1, x2, y2, k: integer; scaleX, scaleY: real);

implementation

uses GraphABC;

procedure DrawDragon(x1, y1, x2, y2, k: integer; scaleX, scaleY: real); 
var
  xn, yn: integer; {Параметризация}
begin
  if k > 0 then 
  begin
    xn := round((x1 + x2) / 2 + (y2 - y1) / 2 * scaleX);
    yn := round((y1 + y2) / 2 - (x2 - x1) / 2 * scaleY);
    DrawDragon(x1, y1, xn, yn, k - 1, scaleX, scaleY);
    DrawDragon(x2, y2, xn, yn, k - 1, scaleX, scaleY); {Декомпозиция}
  end
  else
    line(round(x1 * scaleX) + X, round(y1 * scaleY) + Y, 
         round(x2 * scaleX) + X, round(y2 * scaleY) + Y); {Базовый случай}
end;

end.