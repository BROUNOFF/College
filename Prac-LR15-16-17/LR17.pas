program ReverseFileNumbers;

type
  PNode = ^TNode;
  TNode = record
    Data: Integer;
    Next: PNode;
  end;

var
  Top: PNode;
  InputFile, OutputFile: Text;
  Number: Integer;

procedure Push(Value: Integer);
var
  NewNode: PNode;
begin
  New(NewNode);        
  NewNode^.Data := Value; 
  NewNode^.Next := Top;   
  Top := NewNode;         
end;

function Pop: Integer;
var
  TempNode: PNode;
begin
  if Top = nil then
  begin
    Writeln('Стек пуст!');
    Exit;
  end;
  TempNode := Top;       
  Pop := TempNode^.Data;
  Top := TempNode^.Next; 
  Dispose(TempNode);    
end;

begin
  Top := nil; 

  Assign(InputFile, 'input2.txt');
  Reset(InputFile);


  while not Eof(InputFile) do
  begin
    Readln(InputFile, Number);
    Push(Number);
  end;
  Close(InputFile); 

  Assign(OutputFile, 'output2.txt');
  Rewrite(OutputFile);

  while Top <> nil do
  begin
    Number := Pop;
    Writeln(OutputFile, Number);
  end;
  Close(OutputFile); 

  Writeln('Числа успешно записаны в обратном порядке в файл output2.txt');
end.