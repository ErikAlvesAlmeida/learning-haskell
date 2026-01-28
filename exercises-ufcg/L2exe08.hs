lisList :: [[a]] -> [a]
lisList [] = []
lisList (x:xs) = x ++ lisList xs

main :: IO()
main = do
    print(lisList [[0, 0, 0, 0],[1, 2, 3, 4],[8,8,8,8]])