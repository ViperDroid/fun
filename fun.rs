use std::io::{self, Write};

fn main() {
    let mut num1_str = String::new();
    let mut op_str = String::new();
    let mut num2_str = String::new();

    print!("Enter the first number: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut num1_str).expect("Failed to read line");
    let num1: f64 = num1_str.trim().parse().expect("Please type a number!");

    print!("Enter an operator (+, -, *, /): ");
    io::stdout().flush().unwrap();
    io.stdin().read_line(&mut op_str).expect("Failed to read line");
    let operator = op_str.trim().chars().next().expect("Please enter an operator");

    print!("Enter the second number: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut num2_str).expect("Failed to read line");
    let num2: f64 = num2_str.trim().parse().expect("Please type a number!");

    let result = match operator {
        '+' => num1 + num2,
        '-' => num1 - num2,
        '*' => num1 * num2,
        '/' => {
            if num2 == 0.0 {
                println!("Error: Cannot divide by zero.");
                return;
            }
            num1 / num2
        }
        _ => {
            println!("Error: Invalid operator.");
            return;
        }
    };

    println!("Result: {}", result);
}
