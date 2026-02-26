quadradosPares :: [Int] -> [Int]
quadradosPares lista = [x*x | x <- lista, even x]