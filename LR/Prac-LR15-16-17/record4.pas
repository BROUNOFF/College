
type
  toy = record
    name: string[50];
    price: string[20];
    age: string[20];
  end;

var
  f: file of toy;
  Wish, Wish_read: array[1..3] of toy;
  i: integer;

begin
  Wish[1].name := 'Плюшевый дракончик';
  Wish[1].price := '797 Рублей';
  Wish[1].age := '1 - 12 Лет';
  
  Wish[2].name := 'Лего';
  Wish[2].price := '1467 Рублей';
  Wish[2].age := '4 - 9 Лет';
  
  Wish[3].name := 'Управляемая машинка "Мерседес"';
  Wish[3].price := '6712';
  Wish[3].age := '7 - 11 Лет';

  Assign(f, 'D:\record.txt');
  Rewrite(f);
  for i := 1 to 3 do
    write(f, Wish[i]);
  Close(f);

  
  Assign(f, 'D:\record.txt');
  Reset(f);
  for i := 1 to 3 do
    read(f, Wish_read[i]);
  Close(f);


  for i := 1 to 3 do
    writeln(Wish_read[i].name, ' / ', Wish_read[i].price, ' / ', Wish_read[i].age);

  ReadLn;
end.
