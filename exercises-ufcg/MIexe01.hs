dandoOTroco :: Int -> [Int] -> [Int]
dandoOTroco 0 lista = [0]
dandoOTroco _ [] = error "não temos moedas disponíveis para esse troco"
dandoOTroco n (x:xs) 
    | n >= x = x : (dandoOTroco (n - x) (x:xs))
    | otherwise = dandoOTroco n xs
    
main :: IO()
main = do
    print(dandoOTroco 126 [50,25,10,5])
