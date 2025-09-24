import Text.Read (readMaybe)

main :: IO ()
main = do
    putStrLn "Enter the first number:"
    num1Str <- getLine
    let maybeNum1 = readMaybe num1Str :: Maybe Double

    putStrLn "Enter an operator (+, -, *, /):"
    opStr <- getLine

    putStrLn "Enter the second number:"
    num2Str <- getLine
    let maybeNum2 = readMaybe num2Str :: Maybe Double

    case (maybeNum1, opStr, maybeNum2) of
        (Just n1, "+", Just n2) -> print (n1 + n2)
        (Just n1, "-", Just n2) -> print (n1 - n2)
        (Just n1, "*", Just n2) -> print (n1 * n2)
        (Just n1, "/", Just n2) ->
            if n2 == 0
            then putStrLn "Error: Cannot divide by zero."
            else print (n1 / n2)
        _ -> putStrLn "Invalid input or operator."
