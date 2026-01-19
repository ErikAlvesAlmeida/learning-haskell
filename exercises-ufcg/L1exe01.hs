calcularPremio :: Int -> Int
calcularPremio pontos
    | pontos >= 1 && pontos <= 10 = 100 
    | pontos >= 11 && pontos <= 20 = 200
    | pontos >= 21 && pontos <= 30 = 300
    | pontos >= 31 && pontos <= 40 = 400
    | pontos >= 41                 = 500
    | otherwise                   = 0   

main :: IO ()
main = do
    putStrLn "Digite a quantidade de pontos obtidos:"

    entrada <- getLine

    let pontos = read entrada :: Int

    let premio = calcularPremio pontos

    putStrLn ("O prêmio é: R$ " ++ show premio)