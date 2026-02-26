subidas :: [Int] -> [Int]
subidas [] = []
subidas [a] = []
subidas (x:y:xs)
    | y > x = y : subidas (y:xs)
    | otherwise = subidas (y:xs)