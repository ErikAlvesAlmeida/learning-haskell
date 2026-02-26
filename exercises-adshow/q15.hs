bhaskara :: Float -> Float -> Float -> [Float]
bhaskara a b c
    | delta < 0 = []
    | delta == 0 = [(-b)/(2*a)]
    | otherwise = [r1, r2]
    where 
        delta = b^2-4*a*c
        sq = sqrt delta 
        r1 = ((-b) + sq)/(2*a)
        r2 = ((-b) - sq)/(2*a)