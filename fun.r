cat("Enter the first number: ")
num1_str <- readLines("stdin", n=1)
num1 <- as.numeric(num1_str)

cat("Enter an operator (+, -, *, /): ")
operator <- readLines("stdin", n=1)

cat("Enter the second number: ")
num2_str <- readLines("stdin", n=1)
num2 <- as.numeric(num2_str)

result <- NULL

if (is.na(num1) || is.na(num2)) {
    cat("Error: Invalid number input.\n")
} else {
    result <- switch(
        operator,
        "+" = num1 + num2,
        "-" = num1 - num2,
        "*" = num1 * num2,
        "/" = {
            if (num2 == 0) {
                "Error: Cannot divide by zero."
            } else {
                num1 / num2
            }
        },
        "Error: Invalid operator."
    )
    
    if (is.character(result)) {
        cat(result, "\n")
    } else {
        cat("Result:", result, "\n")
    }
}
