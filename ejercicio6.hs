--  6. Define una función que toma dos listas ordenadas
--     y las combina en una sola lista ordenada.
--     Nota: Está prohibido utilizar `sort`.
-- |   ordena [1, 4, 7] [2, 5] = [1, 2, 4, 5, 7]
ordena :: [Int] -> [Int] -> [Int]
    ordena (y:ys) [] = (y:ys)
    ordena [] (x:xs) = (x:xs)
    ordena (y:ys) (x:xs)
        | y<=x = y:ordena (ys) (x:xs)
        | otherwise = x:ordena (xs) (y:ys)
