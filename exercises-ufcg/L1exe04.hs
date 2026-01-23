import Text.Read (Lexeme(String))

mostraXVezes :: String -> Int -> IO()
mostraXVezes palavra qtd = 
    if qtd == 0
        then return()
        else do
            putStrLn palavra
            mostraXVezes palavra (qtd-1)

main :: IO()
main = do
    palavra <- getLine
    mostraXVezes palavra 4