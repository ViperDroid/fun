import * as readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Enter the first number: ', (num1Str: string) => {
  rl.question('Enter an operator (+, -, *, /): ', (operator: string) => {
    rl.question('Enter the second number: ', (num2Str: string) => {
      const num1: number = parseFloat(num1Str);
      const num2: number = parseFloat(num2Str);
      let result: number;

      if (isNaN(num1) || isNaN(num2)) {
        console.log('Error: Invalid number input.');
        rl.close();
        return;
      }

      switch (operator) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          if (num2 === 0) {
            console.log('Error: Cannot divide by zero.');
            rl.close();
            return;
          }
          result = num1 / num2;
          break;
        default:
          console.log('Error: Invalid operator.');
          rl.close();
          return;
      }
      
      console.log(`Result: ${result}`);
      rl.close();
    });
  });
});
