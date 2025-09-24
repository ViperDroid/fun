fun main() {
    print("Enter the first number: ")
    val num1 = readLine()?.toDoubleOrNull()

    print("Enter an operator (+, -, *, /): ")
    val operator = readLine()

    print("Enter the second number: ")
    val num2 = readLine()?.toDoubleOrNull()

    if (num1 == null || num2 == null || operator == null || operator.length != 1) {
        println("Error: Invalid input.")
        return
    }

    val result = when (operator) {
        "+" -> num1 + num2
        "-" -> num1 - num2
        "*" -> num1 * num2
        "/" -> {
            if (num2 == 0.0) {
                println("Error: Cannot divide by zero.")
                return
            }
            num1 / num2
        }
        else -> {
            println("Error: Invalid operator.")
            return
        }
    }

    println("Result: $result")
}
