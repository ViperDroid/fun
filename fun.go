package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Print("Enter the first number: ")
	num1Str, _ := reader.ReadString('\n')
	num1, err := strconv.ParseFloat(strings.TrimSpace(num1Str), 64)
	if err != nil {
		fmt.Println("Invalid number.")
		return
	}

	fmt.Print("Enter an operator (+, -, *, /): ")
	opStr, _ := reader.ReadString('\n')
	operator := strings.TrimSpace(opStr)

	fmt.Print("Enter the second number: ")
	num2Str, _ := reader.ReadString('\n')
	num2, err := strconv.ParseFloat(strings.TrimSpace(num2Str), 64)
	if err != nil {
		fmt.Println("Invalid number.")
		return
	}

	var result float64
	switch operator {
	case "+":
		result = num1 + num2
	case "-":
		result = num1 - num2
	case "*":
		result = num1 * num2
	case "/":
		if num2 == 0 {
			fmt.Println("Error: Cannot divide by zero.")
			return
		}
		result = num1 / num2
	default:
		fmt.Println("Invalid operator.")
		return
	}

	fmt.Printf("Result: %f\n", result)
}
