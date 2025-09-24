#import <Foundation/Foundation.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputBuffer[256];
        double num1, num2;
        char op;

        printf("Enter the first number: ");
        fgets(inputBuffer, sizeof(inputBuffer), stdin);
        num1 = atof(inputBuffer);

        printf("Enter an operator (+, -, *, /): ");
        fgets(inputBuffer, sizeof(inputBuffer), stdin);
        sscanf(inputBuffer, " %c", &op);

        printf("Enter the second number: ");
        fgets(inputBuffer, sizeof(inputBuffer), stdin);
        num2 = atof(inputBuffer);

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
                    printf("Error: Division by zero.\n");
                }
                break;
            default:
                printf("Error: Invalid operator.\n");
                break;
        }
    }
    return 0;
}
