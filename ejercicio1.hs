import Data.List (sortBy)
import Data.Function (on)

{- Definimos un tipo personalizado para representar nuestros registros
   Cada registro tiene make, model y color -}
data Phone = Phone {
    make :: String,
    model :: Int,
    color :: String
} deriving (Show, Eq)

-- Lista de teléfonos con los datos del problema
phones :: [Phone]
phones = [
    Phone "Nokia" 216 "Black",
    Phone "Apple" 2 "Silver",
    Phone "Huawei" 50 "Gold",
    Phone "Samsung" 7 "Blue"
    ]

-- Función para ordenar los teléfonos por modelo
sortByModel :: [Phone] -> [Phone]
sortByModel = sortBy (compare `on` model)

-- Función principal
main :: IO ()
main = do
    putStrLn "Lista ordenada por modelo:"
    mapM_ print (sortByModel phones)