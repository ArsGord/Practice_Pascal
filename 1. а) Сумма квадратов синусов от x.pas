var n, i: integer; x, m, s: real;
begin
  writeln ('Введите n:'); // Ввод значений n и x с клавиатуры
  readln (n);
  writeln ('Введите x:');
  readln (x);
  
  m:= 1; // Слагаемое
  s:= 0; // Сумма
  for i:= 1 to n do
  begin
    m:= m * sin(x); // Записываем в переменную m произведение предыдущего члена ряда и sin(x)
    s:= s + m // Подсчитываем сумму ряда
  end;
  
  writeln ('Ответ:'); // Выводим ответ
  write (s)
end.