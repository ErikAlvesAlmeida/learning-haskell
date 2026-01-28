split :: [a] -> Int -> ([a],[a])
split lista x = (take x lista, drop x lista)