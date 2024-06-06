fatorial :: Integer -> Integer
fatorial n
    | n == 0 = 1
    | otherwise = n * fatorial (n - 1)

calculaResultado :: Integer -> Integer
calculaResultado n
    | n > 0 = fatorial n
    | otherwise = n * 2

main :: IO ()
main = do
    putStrLn "Digite um número:"
    input <- getLine
    let numero = read input :: Integer
    let resultado = calculaResultado numero
    putStrLn ("O resultado é: " ++ show resultado)