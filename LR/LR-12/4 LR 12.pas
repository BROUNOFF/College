program InsertEmptyLine;

var
  inputFile, tempFile: TextFile;
  line: string;
  K, lineNumber: Integer;
  fileName: string;

begin
  write('Введите номер строки K: ');
  ReadLn(K);
  Write('Введите имя файла: ');
  ReadLn(fileName);

  assignFile(inputFile, fileName);
  Reset(inputFile);

  assignFile(tempFile, 'temp.txt');
  Rewrite(tempFile);

  lineNumber := 1;
  while not eof(inputFile) do
  begin
    readLn(inputFile, line);
    
    if lineNumber = K then
      WriteLn(tempFile);  

    writeLn(tempFile, line);  

    inc(lineNumber);
  end;

  if lineNumber <= K then
    WriteLn(tempFile); 
  
  closeFile(inputFile);
  closeFile(tempFile);

  DeleteFile(fileName); 
  Rename(tempFile, fileName); 

  writeLn('Изменения внесены успешно!');
end.
