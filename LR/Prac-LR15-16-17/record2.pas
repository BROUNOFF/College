type anketa = record
    fio: string;
    birth: string;
    kurs: 1..5
end;
var student: array[1..10] of anketa;
begin
        student[1].fio :='Пастернак Сергей Андреевич';
        student[2].fio :='Писарев Левчик Анатольевич';
        student[3].fio :='Писарев Сергей Николаевич';
        student[1].birth :='03.11.2007';
        student[2].birth :='01.11.2007';
        student[3].birth :='14.1.2005';
        student[1].kurs := 2;
        student[2].kurs := 2;
        student[3].kurs := -1;
        
        writeln(student[1].fio,' / ',student[1].birth,' / ',student[1].kurs);
        writeln(student[2].fio,' / ',student[2].birth,' / ',student[2].kurs);
        writeln(student[3].fio,' / ',student[3].birth,' / ',student[3].kurs);
end.