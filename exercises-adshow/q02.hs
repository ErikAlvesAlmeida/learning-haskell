-- função que calcula a transposta de uma matriz
transposta :: [[Int]] -> [[Int]]
transposta [] = []          -- Caso base 1: Matriz totalmente vazia
transposta ([]:_) = []      -- Caso base 2: Se a primeira linha da matriz ficou vazia, acabaram as colunas!
transposta matriz = 
    let 
        primeiraColuna = [head linha | linha <- matriz]
        resto = [tail linha | linha <- matriz]
    in
        primeiraColuna : transposta resto