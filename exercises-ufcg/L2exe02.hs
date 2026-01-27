iesimo :: [a] -> Int -> a 
iesimo [] _ = error "Indice grande ou lista vazia"
iesimo (x:_) 0 = x
iesimo (_:xs) n = iesimo xs (n - 1)

main :: IO()
main = 
    print(iesimo [1, 2, 3, 4, 5, 6, 7, 8] 3)
