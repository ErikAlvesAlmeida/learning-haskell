-- Defina uma função que encontra o maior elemento de uma lista de inteiros. 
maior :: [Int] -> Int 
maior [a] = a 
maior (x:xs) = max x (maior xs)

main :: IO()
main = 
    print(maior [1,2,3,4,5,6,7,10,-4])