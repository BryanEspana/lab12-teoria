-- Función para calcular potencias de una lista
calcularPotencias :: Int -> [Int] -> [Int]
calcularPotencias n = map (\x -> x^n)

-- Función principal
main :: IO ()
main = do
    let numeros = [1..10]  -- Lista del 1 al 10
    let n = 3             -- Exponente
    let resultado = calcularPotencias n numeros
    putStrLn "Resultado:"
    print resultado