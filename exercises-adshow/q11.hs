curvaNotas :: [Float] -> [Float]
curvaNotas = map (\y -> if y >= 5 then y + 1.5 else y)