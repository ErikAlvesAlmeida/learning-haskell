diario :: [Float] -> [Char]
diario = map converteNota

converteNota :: Float -> Char
converteNota nota
    | nota >= 9.0 = 'A'
    | nota >= 7.5 = 'B'
    | nota >= 6 = 'C'
    | nota >= 4 = 'D'
    | otherwise = 'E'