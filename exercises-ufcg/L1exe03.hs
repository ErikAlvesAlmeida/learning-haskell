lerNumeros :: IO [Int]
lerNumeros = do
    entrada <- getLine
    let numero = read entrada :: Int

    if numero == -1
        then return []
        else do
            restoDaLista <- lerNumeros
        
            return (numero : restoDaLista)

main :: IO ()
main = do
    putStrLn "Digite os números (-1 para parar):"
    
    lista <- lerNumeros
    
    print (reverse lista)

