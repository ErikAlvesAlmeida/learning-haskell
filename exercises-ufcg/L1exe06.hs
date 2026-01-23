converte :: Int -> String
converte 0 = "0"
converte 1 = "1"
converte n = 
    converte (n `div` 2)
    ++ show (n `mod` 2)

main :: IO()
main = do
    entrada <- getLine
    let numero = read entrada :: Int
    print(converte numero)