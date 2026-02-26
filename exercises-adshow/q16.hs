descompacta :: [(Int, Char)] -> String
descompacta [] = []
descompacta ((qtd, caracter):resto) = replicate qtd caracter ++ descompacta resto