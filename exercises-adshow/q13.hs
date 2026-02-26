fechaConta :: [(String, Float)] -> Float
fechaConta [] = 0
fechaConta ((nome,preco) : resto) = 
    if nome == "Cafe" then (preco * 0.5) + fechaConta resto else preco + fechaConta resto