import Foundation

func getNumber(prompt: String) -> Double? {
    print(prompt, terminator: " ")
    guard let line = readLine(), let number = Double(line) else {
        return nil
    }
    return number
}

func getOperator(prompt: String) -> String? {
    print(prompt, terminator: " ")
    return readLine()
}

guard let num1 = getNumber(prompt: "Enter the first number:") else {
    print("Invalid input for the first number.")
    exit(0)
}

guard let op = getOperator(prompt: "Enter an operator (+, -, *, /):") else {
    print("Invalid operator input.")
    exit(0)
}

guard let num2 = getNumber(prompt: "Enter the second number:") else {
    print("Invalid input for the second number.")
    exit(0)
}

var result: Double?

switch op {
case "+":
    result = num1 + num2
case "-":
    result = num1 - num2
case "*":
    result = num1 * num2
case "/":
    if num2 == 0 {
        print("Error: Cannot divide by zero.")
    } else {
        result = num1 / num2
    }
default:
    print("Error: Invalid operator.")
}

if let finalResult = result {
    print("Result: \(finalResult)")
}
