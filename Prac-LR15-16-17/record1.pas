type anketa = record
    fio: string;
    birth: string;
    kurs: 1..5
end;
var student: anketa;
begin
  student.kurs:=2;
  writeln('Введите вашу Фамилию Имя и Отчество');
  readln(student.fio);
  writeln('Введите вашу Date of Birth');
  readln(student.birth);
  writeln(student.fio,' / ',student.birth,' / ',student.kurs);
end.