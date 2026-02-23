subconjunto :: Eq a => [a] -> [a] -> Bool
subconjunto [] _ = True
subconjunto _ [] = False
subconjunto (x:xs) ys = (x `elem` ys) && subconjunto xs ys