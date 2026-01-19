-- montando lista de números pares
lerNumeros :: IO [Int]
lerNumeros = do
    entrada <- getLine
    let numero = read entrada :: Int
    if numero == -1
        then return []
        else do
            resto <- lerNumeros

            if ehPar numero
                then return (numero : resto)
                else return resto


ehPar :: Int -> Bool
ehPar num = num `mod` 2 == 0

main :: IO ()
main = do
    putStrLn "Digite os números (-1 para parar):"
    
    lista <- lerNumeros
    
    print (lista)