import Data.List (sort)
segundoMaior :: [Int] -> Int
segundoMaior [a] = a
segundoMaior lista =
    let
        ordenada = sort lista
        posRemocao = removeElemento (last ordenada) lista
    in
        maximum posRemocao

removeElemento :: Eq a => a -> [a] -> [a]
removeElemento _ [] = []
removeElemento n (x:xs) =
    if n == x
        then removeElemento n xs
    else x : removeElemento n xs


main :: IO()
main = 
    print(segundoMaior [1,2,34,6,324,43,345,432231,42,234,21])