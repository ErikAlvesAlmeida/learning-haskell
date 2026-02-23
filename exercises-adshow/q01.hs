-- Desafio 01 Gemini
contaOcorrencias :: Eq a => a -> [a] -> Int
contaOcorrencias _ [] = 0  
contaOcorrencias n (x:xs) = 
    if n == x 
        then 1 + contaOcorrencias n xs
    else contaOcorrencias n xs 

-- Desafio 02 Gemini
removeElemento :: Eq a => a -> [a] -> [a]
removeElemento _ [] = [] 
removeElemento n (x:xs) = 
    if n == x  
        then removeElemento n xs 
    else x : removeElemento n xs 

-- Conta Tuplas - Adshow exercise
contaTuplas :: Eq a => [a] -> [(a, Int)]
contaTuplas [] = []
contaTuplas (x:xs) = 
    let 
        quantidade = contaOcorrencias x (x:xs)
        listaLimpa = removeElemento x xs
    in 
        (x, quantidade) : contaTuplas listaLimpa