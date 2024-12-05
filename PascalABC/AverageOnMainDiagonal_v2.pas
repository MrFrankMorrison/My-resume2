program MainDiagonalAverage;

var
  matrix: array[1..10, 1..10] of integer; // Максимальний розмір матриці
  n, i, j, sum, count: integer;
  average: real;

begin
  writeln('Введіть розмір квадратної матриці (n): ');
  readln(n);

  // Автоматичне заповнення матриці випадковими числами
  randomize;
  writeln('Згенерована матриця:');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      matrix[i, j] := random(201) - 100; // Генерація чисел від -100 до 100
      write(matrix[i, j]:5); // Виведення числа з форматуванням
    end;
    writeln; // Перехід на новий рядок
  end;

  // Обчислення середнього арифметичного на головній діагоналі
  sum := 0;
  count := 0;
  for i := 1 to n do
  begin
    sum := sum + matrix[i, i];
    count := count + 1;
  end;

  if count > 0 then
    average := sum / count
  else
    average := 0;

  // Виведення результату
  writeln('Середнє арифметичне на головній діагоналі: ', average:0:2);
end.
