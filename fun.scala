import scala.io.StdIn

object ScalaCalc {
  def main(args: Array[String]): Unit = {
    try {
      print("Enter the first number: ")
      val num1 = StdIn.readDouble()

      print("Enter an operator (+, -, *, /): ")
      val operator = StdIn.readLine()

      print("Enter the second number: ")
      val num2 = StdIn.readDouble()

      val result = operator match {
        case "+" => num1 + num2
        case "-" => num1 - num2
        case "*" => num1 * num2
        case "/" =>
          if (num2 != 0) {
            num1 / num2
          } else {
            "Error: Cannot divide by zero."
          }
        case _ => "Error: Invalid operator."
      }
      println(s"Result: $result")
    } catch {
      case _: NumberFormatException => println("Invalid number input.")
    }
  }
}
