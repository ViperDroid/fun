io.write("Enter the first number: ")
local num1_str = io.read()
local num1 = tonumber(num1_str)

io.write("Enter an operator (+, -, *, /): ")
local operator = io.read()

io.write("Enter the second number: ")
local num2_str = io.read()
local num2 = tonumber(num2_str)

if not num1 or not num2 then
  print("Error: Invalid number input.")
else
  local result
  if operator == "+" then
    result = num1 + num2
  elseif operator == "-" then
    result = num1 - num2
  elseif operator == "*" then
    result = num1 * num2
  elseif operator == "/" then
    if num2 == 0 then
      result = "Error: Cannot divide by zero."
    else
      result = num1 / num2
    end
  else
    result = "Error: Invalid operator."
  end
  print("Result: " .. tostring(result))
end
