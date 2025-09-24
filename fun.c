#include <stdio.h>

int main() {
    char op;
    double num1, num2;

    printf("Enter the first number: ");
    scanf("%lf", &num1);

    printf("Enter an operator (+, -, *, /): ");
    scanf(" %c", &op);

    printf("Enter the second number: ");
    scanf("%lf", &num2);

    switch (op) {
        case '+':
            printf("Result: %f\n", num1 + num2);
            break;
        case '-':
            printf("Result: %f\n", num1 - num2);
            break;
        case '*':
            printf("Result: %f\n", num1 * num2);
            break;
        case '/':
            if (num2 != 0) {
                printf("Result: %f\n", num1 / num2);
            } else {
                printf("Error: Division by zero is not allowed.\n");
            }
            break;
        default:
            printf("Error: Invalid operator.\n");
            break;
    }

    return 0;
}
