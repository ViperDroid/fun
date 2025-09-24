#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter an operator (+, -, *, /): " op
read -p "Enter the second number: " num2

if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Invalid number input."
    exit 1
fi

case "$op" in
    "+")
        result=$(echo "$num1 + $num2" | bc)
        ;;
    "-")
        result=$(echo "$num1 - $num2" | bc)
        ;;
    "*")
        result=$(echo "$num1 * $num2" | bc)
        ;;
    "/")
        if (( $(echo "$num2 == 0" | bc -l) )); then
            echo "Error: Cannot divide by zero."
            exit 1
        fi
        result=$(echo "scale=4; $num1 / $num2" | bc)
        ;;
    *)
        echo "Error: Invalid operator."
        exit 1
        ;;
esac

echo "Result: $result"
