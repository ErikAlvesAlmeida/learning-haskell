-- Calcular as raízes de uma equação do segundo grau.
raizes :: Float -> Float -> Float -> [Float]
raizes a b c 
    | delta < 0 = []
    | delta == 0 = [x]
    | otherwise = [x, y]
    where 
        delta = b^2 - 4 * a * c
        x = (-b + sqrt delta)/(2*a)
        y = (-b - sqrt delta)/(2*a)

main :: IO()
main = do
    entrada1 <- getLine 
    entrada2 <- getLine 
    entrada3 <- getLine 

    let a = read entrada1 :: Float 
    let b = read entrada2 :: Float 
    let c = read entrada3 :: Float 

    print(raizes a b c)

