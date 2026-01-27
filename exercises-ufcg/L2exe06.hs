--Defina uma função que recebe uma lista de palavras, e retorna a quantidade de 
--palavras que estão no plural. Considere que qualquer palavra terminada em 's' está 
--no plural.

qtdPlural :: [String] -> Int 
qtdPlural [] = 0
qtdPlural (x:xs) 
    | (last x)  == 's' = 1 + qtdPlural xs 
    | otherwise = qtdPlural xs 

main :: IO()
main = 
    print(qtdPlural ["Sexos","Mulheres","carne","peixe","carnivoro"])
