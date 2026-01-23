-- Escreva uma função conceito que recebe uma nota como argumento e retorne o
-- conceito correspondente:
-- ● Nota >= 9.0, conceito A
-- ● Nota >= 7.5 e < 9.0, conceito B
-- ● Nota >= 6.0 e < 7.5, conceito C
-- ● Nota >= 4.0 e < 6.0, conceito D
-- ● Nota < 4.0, conceito E

conceito :: Float -> String
conceito nota 
    | nota >= 9 = "A"
    | nota >= 7.5 = "B"
    | nota >= 6.0 = "C"
    | nota >= 4.0 = "D"
    | otherwise = "E"

main :: IO()
main = do
    entrada <- getLine 
    let nota = read entrada :: Float
    print(conceito nota)