ehPrimo :: Int -> Bool
ehPrimo value 
    | value < 2         = False
    | value == 2        = True
    | otherwise         = temDivisor value 2

temDivisor :: Int -> Int -> Bool
temDivisor n i
    | i > floor(sqrt (fromIntegral n)) = True
    | n `mod` i == 0                   = False
    | otherwise                        = temDivisor n (i+1)

main :: IO()
main = do
    entrada <- getLine
    let numero = read entrada :: Int
    print(ehPrimo numero)