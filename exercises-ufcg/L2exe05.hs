-- Defina uma função para adicionar uma quantidade n de espaços à esquerda de uma 
-- dada String. 
spaceLeft :: String -> Int -> String
spaceLeft palavra 0 = palavra
spaceLeft palavra n = ' ' : spaceLeft palavra (n - 1)

main :: IO()
main = do
    entrada <- getLine 
    print(spaceLeft entrada 6)