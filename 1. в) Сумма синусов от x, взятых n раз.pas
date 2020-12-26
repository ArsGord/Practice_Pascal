var n, i: integer; x, s: real;
begin
  writeln ('Введите n:'); // Ввод значений n и x с клавиатуры
  readln (n);
  writeln ('Введите x:');
  readln (x);
  
  s:= 0; // Сумма
  for i:= 1 to n do
  begin
    x:= sin(x); // Записываем в переменную x синус от предыдущего члена ряда
    s:= s + x // Подсчитываем сумму ряда
  end;
  
  writeln ('Ответ:'); // Выводим ответ
  write (s);
end.