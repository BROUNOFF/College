program twotwelve;

var mark: integer;
    D: string;

begin
  write('Введите оценку (1-5): ');
  readln(mark);

  case mark of
    1: D := 'плохо';
    2: D := 'неудовлетворительно';
    3: D := 'удовлетворительно';
    4: D := 'хорошо';
    5: D := 'отлично';
    else D := 'Некорректная оценка';
  end;

  writeln('Словесное описание: ', D);
end.
