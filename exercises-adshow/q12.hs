avancaCartas :: Int -> [a] -> [a]
avancaCartas _ [] = []
avancaCartas 0 (x:xs) = x:xs
avancaCartas a lista = take (length lista) (drop a (cycle lista))