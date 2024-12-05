program MainDiagonalAverage;

var
  matrix: array[1..10, 1..10] of integer; // Максимальний розмір матриці
  n, i, j, sum, count: integer;
  average: real;

begin
  writeln('Введіть розмір квадратної матриці (n): ');
  readln(n);

  // Введення елементів матриці
  writeln('Введіть елементи матриці:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      write('matrix[', i, ',', j, '] = ');
      readln(matrix[i, j]);
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