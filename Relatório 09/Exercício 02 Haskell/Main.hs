main :: IO ()
main = do
    let listaOriginal :: [Int]
        listaOriginal = [30,29..1]
        listaMultiplicada = map (*3) listaOriginal
        listaInvertida = reverse listaMultiplicada
        ultimoElemento = last listaInvertida
    putStrLn "Lista Original:"
    print listaOriginal
    putStrLn "Lista Multiplicada:"
    print listaMultiplicada
    putStrLn ("O último elemento da lista invertida é: " ++ show ultimoElemento)