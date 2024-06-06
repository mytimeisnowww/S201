calculaQuadrado :: Double -> IO ()
calculaQuadrado x = putStrLn ("O quadrado de " ++ show x ++ " é " ++ show (x * x))

main :: IO ()
main = do
    putStrLn "Digite o valor de x:"
    input <- getLine
    let x = read input :: Double
    calculaQuadrado x