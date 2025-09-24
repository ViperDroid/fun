program PascalCalculator;

var
  num1, num2, result: real;
  op: char;

begin
  write('Enter the first number: ');
  readln(num1);

  write('Enter an operator (+, -, *, /): ');
  readln(op);

  write('Enter the second number: ');
  readln(num2);

  case op of
    '+': result := num1 + num2;
    '-': result := num1 - num2;
    '*': result := num1 * num2;
    '/':
      begin
        if num2 = 0 then
        begin
          writeln('Error: Cannot divide by zero.');
          halt;
        end
        else
          result := num1 / num2;
      end;
    else
      begin
        writeln('Error: Invalid operator.');
        halt;
      end;
  end;

  writeln('Result: ', result:0:4);
end.
