-- Estudantes de biologia estão estudando o comportamento de uma bactéria.
-- Eles precisam estimar o crescimento da população de bactérias dado que já
-- conhecem a sua capacidade de reprodução binária. Sabendo que a reprodução
-- binária da bactéria acontece a cada 1 minuto, faça um programa que, dada a
-- população inicial de bactérias P e o tempo T em minutos, retorne a quantidade
-- de bactérias ao fim dos T minutos.

crescimento :: Integer -> Integer -> Integer
crescimento p t = p*(2^t)

crescimentoRecur :: Integer -> Integer -> Integer
crescimentoRecur p 0 = p 
crescimentoRecur p t = 2 * crescimentoRecur p (t-1)

main :: IO()
main = do
    entrada <- getLine 
    entrada2 <- getLine 
    let bacteria = read entrada :: Integer 
    let tempo = read entrada2 :: Integer 

    print(crescimento bacteria tempo)