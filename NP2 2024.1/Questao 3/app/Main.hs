main :: IO ()
main = do
    let numerosPares :: [Int]
        numerosPares = filter even [1..50]
        cubos = map (^(3 :: Integer)) numerosPares
        cubosMultiplicados = map (*2) cubos
        soma = sum cubosMultiplicados
    putStrLn "Números pares entre 1 e 50:"
    print numerosPares
    putStrLn "Cubos dos números pares:"
    print cubos
    putStrLn "Cubos dos números pares multiplicados por 2:"
    print cubosMultiplicados
    putStrLn "Soma dos cubos dos números pares multiplicados por 2:"
    print soma