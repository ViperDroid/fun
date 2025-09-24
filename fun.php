<?php
$num1 = (float)readline("Enter the first number: ");
$operator = readline("Enter an operator (+, -, *, /): ");
$num2 = (float)readline("Enter the second number: ");

$result = 0;

switch ($operator) {
    case '+':
        $result = $num1 + $num2;
        break;
    case '-':
        $result = $num1 - $num2;
        break;
    case '*':
        $result = $num1 * $num2;
        break;
    case '/':
        if ($num2 == 0) {
            echo "Error: Cannot divide by zero." . PHP_EOL;
            exit;
        }
        $result = $num1 / $num2;
        break;
    default:
        echo "Error: Invalid operator." . PHP_EOL;
        exit;
}

echo "Result: " . $result . PHP_EOL;
?>
