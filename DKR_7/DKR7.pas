uses CRT, GraphABC, Dragon;

var
  scale: real := 1.0; {Масштаб}
  depth: integer := 10; {Глубина прорисовки}
  X: integer := 0; {Смещение фигуры по X}
  Y: integer := 0; {Смещение фигуры по Y}

{Процедура рисования кривой дракона}
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

{Процедура отрисовки интерфейса}
procedure DrawInterface;
begin
  SetBrushColor(clWhite);
  FillRectangle(0, 0, WindowWidth, 50); // Панель для кнопок
  SetFontSize(12);
  TextOut(10, 10, 'Масштаб: + / -');
  TextOut(200, 10, 'Глубина: PageUp / PageDown');
  TextOut(450, 10, 'Перемещение: Стрелки');
  TextOut(700, 10, 'Глубина: ' + depth.ToString); // Отображаем текущую глубину
end;

{Обработка нажатий клавиш}
procedure HandleKeyDown(key: integer);
begin
  case key of
    VK_Add:      scale := scale * 1.1; // Увеличить масштаб
    VK_Subtract: scale := scale / 1.1; // Уменьшить масштаб
    VK_Up:       Y := Y - 10; // Вверх
    VK_Down:     Y := Y + 10; // Вниз
    VK_Left:     X := X - 10; // Влево
    VK_Right:    X := X + 10; // Вправо
    VK_Prior:    depth := depth + 1; // Увеличить глубину (PageUp)
    VK_Next:     if depth > 1 then depth := depth - 1; // Уменьшить глубину (PageDown)
  end;
  ClearWindow;
  DrawInterface;
  DrawDragon(200, 300, 500, 300, depth, scale, scale);
end;

{Основная программа}
begin
  SetWindowCaption('Кривая дракона');
  SetWindowSize(800, 600);
  ClearWindow;

  {Интерфейс}
  DrawInterface;

  {Обработка нажатий клавиш}
  OnKeyDown := HandleKeyDown;

  {Отрисовка Кривой дракона}
  DrawDragon(200, 300, 500, 300, depth, scale, scale);

  {Ждем нажатия клавиши для выхода}
  Repeat Until KeyPressed;
end.