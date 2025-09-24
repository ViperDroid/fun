def main():
    try:
        num1_str = input("Enter the first number: ")
        num1 = float(num1_str)

        operator = input("Enter an operator (+, -, *, /): ")

        num2_str = input("Enter the second number: ")
        num2 = float(num2_str)

        if operator == '+':
            result = num1 + num2
        elif operator == '-':
            result = num1 - num2
        elif operator == '*':
            result = num1 * num2
        elif operator == '/':
            if num2 == 0:
                print("Error: Cannot divide by zero.")
                return
            result = num1 / num2
        else:
            print("Error: Invalid operator.")
            return

        print(f"The result is: {result}")

    except ValueError:
        print("Error: Invalid number input.")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    main()
