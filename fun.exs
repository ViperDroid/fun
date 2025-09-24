defmodule Calculator do
  def run do
    case get_inputs() do
      {:ok, num1, op, num2} ->
        calculate(num1, op, num2)
      {:error, reason} ->
        IO.puts("Error: #{reason}")
    end
  end

  defp get_inputs do
    case {get_number("Enter the first number: "), IO.gets("Enter an operator (+, -, *, /): "), get_number("Enter the second number: ")} do
      {{:ok, n1}, {:ok, op}, {:ok, n2}} ->
        {:ok, n1, String.trim(op), n2}
      _ ->
        {:error, "Invalid input."}
    end
  end

  defp get_number(prompt) do
    case IO.gets(prompt) |> String.trim() |> Float.parse() do
      {num, ""} -> {:ok, num}
      _ -> :error
    end
  end

  defp calculate(num1, op, num2) do
    result =
      case op do
        "+" -> num1 + num2
        "-" -> num1 - num2
        "*" -> num1 * num2
        "/" ->
          if num2 == 0.0 do
            "Cannot divide by zero."
          else
            num1 / num2
          end
        _ -> "Invalid operator."
      end

    IO.puts("Result: #{result}")
  end
end

Calculator.run()
