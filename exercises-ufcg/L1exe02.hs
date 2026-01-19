ehPar :: Int -> Bool
ehPar num 
    | num `mod` 2 == 0 = True
    | otherwise = False

main :: IO()
main = do
    putStrLn "Digite um número pra saber se é PAR:"

    entrada <- getLine

    let par = read entrada :: Int

    let resultado = ehPar par
    
    putStrLn (show resultado)