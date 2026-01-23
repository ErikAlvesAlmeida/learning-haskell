-- Faça uma função que leia três números e retorne o maior deles.
maior :: Int -> Int -> Int -> Int
maior a b c
    | a > b && a > c = a
    | b > a && b > c = b
    | c > a && c > b = c
    | otherwise = a

main :: IO()
main = do
    putStrLn "A: "
    entrada1 <- getLine
    let a = read entrada1 :: Int
    putStrLn "B: "
    entrada2 <- getLine
    let b = read entrada2 :: Int
    putStrLn "C: "
    entrada3 <- getLine
    let c = read entrada3 :: Int
    print (maior a b c)