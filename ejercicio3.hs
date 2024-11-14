module Main where

getFirsts :: [[a]] -> [a]
getFirsts = map head

getRests :: [[a]] -> [[a]]
getRests = map tail

transpose :: [[a]] -> [[a]]
transpose [] = []
transpose [[]] = []
transpose m
    | null (head m) = []  
    | otherwise = getFirsts m : transpose (getRests m)

-- Ejemplo
matrix :: [[Int]]
matrix = [[1, 2, 3, 1],
         [4, 5, 6, 0],
         [7, 8, 9, -1]]

main :: IO ()
main = do
    putStrLn "Matriz original:"
    print matrix
    putStrLn "\nMatriz transpuesta:"
    print (transpose matrix)