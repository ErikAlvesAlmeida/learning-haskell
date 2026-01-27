maiuscula :: [Char] -> String 
maiuscula [] = ""
maiuscula (x:xs) 
    | x >= 'A' && x <= 'Z' = x : maiuscula xs
    | otherwise = maiuscula xs 

main :: IO()
main = do
    entrada <- getLine
    print(maiuscula entrada)