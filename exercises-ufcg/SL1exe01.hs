-- Faça um programa em Haskell que, dados dois raios referentes a
-- dois círculos, calcule a diferença entre as áreas dos círculos.
calcArea :: Float -> Float
calcArea raio = pi*(raio^2)

calcDif :: Float -> Float -> Float
calcDif raio1 raio2 = abs (calcArea raio2 - calcArea raio1)

main :: IO()
main = do
    entrada1 <- getLine
    entrada2 <- getLine

    let raio1 = read entrada1 :: Float
    let raio2 = read entrada2 :: Float

    print(calcDif raio1 raio2)
