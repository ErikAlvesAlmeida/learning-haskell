bacterias :: Int -> Int -> Int
bacterias 0 _ = 0
bacterias p 0 = p
bacterias p t = bacterias (2*p) (t-1)