var n, i: integer; x, m, s: real;
begin
  writeln ('Введите n:'); // Ввод значений n и x с клавиатуры
  readln (n);
  writeln ('Введите x:');
  readln (x);
  
  m:= 1; // Предыдущая степень x
  s:= 0; // Сумма
  for i:= 1 to n do
  begin
    m:= m * x; // Записываем в переменную m произведение предыдущего члена ряда и x
    s:= s + sin(m) // Подсчитываем сумму ряда
  end;
  
  writeln ('Ответ:'); // Выводим ответ
  write (s);
end.