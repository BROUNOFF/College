type toy = record
         name: string;
         price: string;
         age: string;
 
          end;
var  wish: array[1..10] of toy;
begin
with wish[1] do
begin
           name:= 'Плюшевый дракончик';
           price:= '797 Рублей';
           age:= '1 - 12 Лет';
end;
with wish[2] do
begin
           name:= 'Лего';
           price:= '1467 Рублей';
           age:= '4 - 9 Лет';
end;
with wish[3] do
begin
           name:= 'Управляемая машинка "Мерседес" ';
           price:= '6712';
           age:= '7 - 11 Лет';
end;
        writeln(wish[1].name,' / ',wish[1].price,' / ',wish[1].age);
        writeln(wish[2].name,' / ',wish[2].price,' / ',wish[2].age);
        writeln(wish[3].name,' / ',wish[3].price,' / ',wish[3].age);
end.