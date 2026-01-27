-- Defina uma função que recebe uma lista de inteiros e retorna uma lista com as 
-- somas dos elementos que ocupam posições simétricas (primeiro + último, segundo 
-- + penúltimo, terceiro + antepenúltimo, ...). 
somaSimetrico :: [Int] -> [Int]
somaSimetrico [] = []
somaSimetrico [a] = [a]
somaSimetrico (x:xs) = (x + last xs) : somaSimetrico (init xs)

main :: IO()
main = do
    print(somaSimetrico [])