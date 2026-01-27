meuTamanho :: [a] -> Int 
meuTamanho [] = 0
meuTamanho (_:xs) = 1 + meuTamanho xs

main :: IO()
main = 
    print (meuTamanho [1, 2, 3, 4, 6])
