comprime :: Eq a => [a] -> [a]
comprime [] = []
comprime [a] = [a]
comprime (x:xs) 
    | x == head xs = comprime xs
    | otherwise = x : comprime xs