-- Função fatorial usando casamento de padrões.
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO()
main = do
    entrada <- getLine 
    let num = read entrada :: Int 
    print(factorial num)