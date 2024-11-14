module Main where

removeElements :: Eq a => [a] -> [a] -> [a]
removeElements list toRemove = 
    filter (\x -> not $ elem x toRemove) list

-- Ejemplo
initialList :: [String]
initialList = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]

elementsToRemove :: [String]
elementsToRemove = ["amarillo", "café", "blanco"]

main :: IO ()
main = do
    putStrLn "Lista original:"
    print initialList
    putStrLn "\nElementos a eliminar:"
    print elementsToRemove
    putStrLn "\nLista resultante:"
    print (removeElements initialList elementsToRemove)

-- Pruebas
test1 :: [Int]
test1 = removeElements [1,2,3,4,5] [2,4]  -- [1,3,5]

test2 :: [String]
test2 = removeElements ["a","b","c"] ["d"]  -- ["a","b","c"]

test3 :: [String]
test3 = removeElements [] ["a","b"]  -- []