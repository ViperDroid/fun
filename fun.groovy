def reader = new BufferedReader(new InputStreamReader(System.in))

try {
    print "Enter the first number: "
    def num1 = reader.readLine().toDouble()

    print "Enter an operator (+, -, *, /): "
    def operator = reader.readLine()

    print "Enter the second number: "
    def num2 = reader.readLine().toDouble()

    def result
    switch (operator) {
        case '+':
            result = num1 + num2
            break
        case '-':
            result = num1 - num2
            break
        case '*':
            result = num1 * num2
            break
        case '/':
            if (num2 == 0) {
                println "Error: Cannot divide by zero."
                return
            }
            result = num1 / num2
            break
        default:
            println "Error: Invalid operator."
            return
    }
    println "Result: $result"
} catch (NumberFormatException e) {
    println "Error: Invalid number input."
}
