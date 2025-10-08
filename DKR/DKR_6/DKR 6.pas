const
  Max = 10;

type
  Node = record
    data: Integer;  
    prev: Integer; 
    next: Integer; 
  end;

var
  head, freeList: Integer;  
                 {Массив для хранения узлов}
  list: array[0..Max - 1] of Node;


procedure Spisok;
var
  i: Integer;

begin
                 {формирование списка}
  for i := 0 to Max - 2 do
    list[i].next := i + 1;
  list[Max - 1].next := -1;
  freeList := 0;
end;

function VideleniePamyat: Integer;
begin
  if freeList = -1 then
  begin
    Writeln('Ошибка: нет свободной памяти для списка!');
    Exit();
  end;
  VideleniePamyat := freeList;
  freeList := list[freeList].next;
end;

procedure Pamyat(node: Integer);
begin
  list[node].next := freeList;
  freeList := node;
end;

procedure insert(data: Integer);
var
  node: Integer;
begin
  node := VideleniePamyat;
  if node = -1 then Exit;
  
  list[node].data := data;
  
  if head = -1 then
  begin
                {eсли список пуст}
    list[node].prev := node;
    list[node].next := node;
    head := node;
  end
  else
  begin
               {в начало списка}
    list[node].prev := list[head].prev;
    list[node].next := head;
    list[list[head].prev].next := node;
    list[head].prev := node;
    head := node;
  end;
end;

procedure Delete(data: Integer);
var
  current: Integer;
begin
  if head = -1 then
  begin
    Writeln('Список пуст!');
    Exit;
  end;
  
  current := head;
  repeat
    if list[current].data = data then
    begin
                  {eсли найден}
      if list[current].next = current then
        head := -1
      else
      begin
        list[list[current].prev].next := list[current].next;
        list[list[current].next].prev := list[current].prev;
        if current = head then
          head := list[current].next;
      end;
      Pamyat(current);
      Writeln('Элемент ', data, ' удалён.');
      Exit;
    end;
    current := list[current].next;
  until current = head;
  
  Writeln('Элемент ', data, ' не найден.');
end;

procedure Display;
var
  current: Integer;
begin
  if head = -1 then
  begin
    Writeln('Список пуст!');
    Exit;
  end;
  
  current := head;
  Write('Содержимое списка: ');
  repeat
    Write(list[current].data, '   ');
    current := list[current].next;
  until current = head;
  Writeln;
end;

procedure Menu;
var
  choice, data: Integer;
begin
  repeat
    Writeln('Меню:');
    Writeln('1.    Вставить элемент');
    Writeln('2.    Удалить элемент');
    Writeln('3.    Показать список');
    Writeln('4.    Выход');
    Write('Введите ваш выбор: ');
    Readln(choice);
    
    case choice of
      1:
        begin
          Write('Введите данные для вставки: ');
          Readln(data);
          insert(data);
        end;
      2:
        begin
          Write('Введите данные для удаления: ');
          Readln(data);
          Delete(data);
        end;
      3: Display;
      4: Writeln('                                         Выход...');
    else
      Writeln('Неверный выбор! Пожалуйста, выберите снова.');
    end;
    
  until choice = 4;
  
end;

begin
  Spisok;
  head := -1;
  
  Menu;
end.
