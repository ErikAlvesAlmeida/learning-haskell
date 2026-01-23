-- ÚLTIMA QUESTÃO DA LISTA
-- Defina uma função que recebe dois inteiros e mostra todos os pares entre esses valores.
mostraNum :: Int -> Int -> [Int]
mostraNum val1 val2
    | val2 < val1 = []
    | otherwise =
        if even val1
            then val1 : mostraNum (val1+1) val2
            else mostraNum (val1+1) val2

main :: IO()
main = do
    entrada1 <- getLine
    entrada2 <- getLine

    let num1 = read entrada1 :: Int
    let num2 = read entrada2 :: Int

    print(mostraNum num1 num2)