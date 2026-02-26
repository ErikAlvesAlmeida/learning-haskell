interseccao :: Eq a => [a] -> [a] -> [a]
interseccao lista1 lista2 = [x | x <- lista1, x `elem` lista2]
