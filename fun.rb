puts "Enter the first number:"
num1 = gets.chomp.to_f

puts "Enter an operator (+, -, *, /):"
operator = gets.chomp

puts "Enter the second number:"
num2 = gets.chomp.to_f

result = case operator
         when '+'
           num1 + num2
         when '-'
           num1 - num2
         when '*'
           num1 * num2
         when '/'
           if num2 == 0
             "Error: Division by zero."
           else
             num1 / num2
           end
         else
           "Error: Invalid operator."
         end

puts "Result: #{result}"
