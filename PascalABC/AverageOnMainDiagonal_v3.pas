program MainDiagonalAverage;

uses SysUtils; // Для роботи з файлами

var
  matrix: array[1..10, 1..10] of integer; // Максимальний розмір матриці
  n, i, j, sum, count: integer;
  average: real;
  outputFile: TextFile;

begin
  writeln('Введіть розмір квадратної матриці (n, не більше 10): ');
  readln(n);
  if (n < 1) or (n > 10) then
  begin
    writeln('Помилка: некоректний розмір матриці!');
    exit;
  end;

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

  // Збереження матриці у файл
  AssignFile(outputFile, 'matrix_output.txt');
  Rewrite(outputFile);
  writeln(outputFile, 'Згенерована матриця:');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write(outputFile, matrix[i, j]:5);
    end;
    writeln(outputFile);
  end;
  writeln(outputFile, 'Середнє арифметичне на головній діагоналі: ', average:0:2);
  CloseFile(outputFile);

  writeln('Матрицю збережено у файл "matrix_output.txt".');
end.
