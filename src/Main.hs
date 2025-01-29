module Main where

valorTotal :: Double -> Double -> Double
valorTotal morangos macas
    | morangos < 0 || macas < 0 = error "Entrada inválida"
    | otherwise = precoMorangos + precoMacas
  where
    precoMorangos = if morangos > 5 then morangos * 7.20 else morangos * 8.50
    precoMacas = if macas > 5 then macas * 4.75 else macas * 5.25

main :: IO ()
main = do
    putStrLn "Digite a quantidade de morangos (em kg):"
    morangosStr <- getLine
    putStrLn "Digite a quantidade de maçãs (em kg):"
    macasStr <- getLine
    let morangos = read morangosStr :: Double
        macas = read macasStr :: Double
    if morangos < 0 || macas < 0
        then putStrLn "Entrada inválida"
        else putStrLn $ "O valor total da compra é R$ " ++ show (valorTotal morangos macas)
