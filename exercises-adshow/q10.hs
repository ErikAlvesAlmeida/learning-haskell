decodifica :: [String] -> [String]
decodifica lista = [reverse (tail palavra) | palavra <- lista, length palavra > 3]