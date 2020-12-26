uses crt;
const n = 3; // Задаём значение n
var a: array [1..n, 1..n] of real; s: real; i, j: integer; f: boolean;
begin
s:= 0; // Сумма a[i, j], где i не равно j
gotoxy (10, 2); // Красивый ввод матрицы
writeln ('Введите исходную матрицу');
for i:= 1 to n do 
  for j:= 1 to n do
  begin
    gotoxy (10*j, i + 2);
    readln (a[i, j]);
    if i <> j then s:= s + a[i, j] // Подсчёт суммы s
  end;
  
f:= false; // Флаг
for i:= 1 to n do // Определяем, существует ли a [i, i], которое больше или равно s
  if a[i, i] >= s then f:= true; // Если такой элемент матрицы существует, то присваиваем значение "true" флагу
  
if f then writeln ('Данная матрица обладает свойством диагонального преобладания.') // Выводим ответ в зависимости от значения флага
  else writeln ('Данная матрица не обладает свойством диагонального преобладания.')
end.