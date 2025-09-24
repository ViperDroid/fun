open System

[<EntryPoint>]
let main argv =
    try
        printf "Enter the first number: "
        let num1 = Console.ReadLine() |> Double.Parse

        printf "Enter an operator (+, -, *, /): "
        let op = Console.ReadLine()

        printf "Enter the second number: "
        let num2 = Console.ReadLine() |> Double.Parse

        let result =
            match op with
            | "+" -> Some(num1 + num2)
            | "-" -> Some(num1 - num2)
            | "*" -> Some(num1 * num2)
            | "/" -> if num2 <> 0.0 then Some(num1 / num2) else None
            | _   -> None

        match result with
        | Some res -> printfn "Result: %f" res
        | None -> 
            if op = "/" && num2 = 0.0 then
                printfn "Error: Cannot divide by zero."
            else
                printfn "Error: Invalid operator."
    with
    | :? FormatException -> printfn "Error: Invalid number input."
    
    0
