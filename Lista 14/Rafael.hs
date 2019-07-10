sings :: [[a]] -> [a]
sings xs = [x | [x] <- xs ]

matches :: Int -> [Int] -> [Int]
matches a b = [x | x <- b, x == a]

-- primeira solucao
elemento :: Int -> [Int] -> Bool
elemento a b 
    | matches a b /= [] = True
    | otherwise = False

-- segunda solucao
elemento2 :: Int -> [Int] -> Bool
elemento2 a b = matches a b /= []

-- primos
-- divide ate o divisor ser igual a 1
divisor :: Int -> Int -> [Int]
divisor x 1 = [1]
divisor x y
    | x `mod` y == 0 = divisor x (y-1) ++ [y]
    | otherwise = divisor x (y-1)

divisores :: Int -> [Int]
divisores a = divisor a a

isPrime :: Int -> Bool
isPrime x = length (divisores x) == 2

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (a:l) = quickSort (menores a l) ++ [a] ++ quickSort (maiores a l)

maiores :: Ord a => a -> [a] -> [a]
maiores a [] = []
maiores a (x:xs)
  |x >= a = x : maiores a xs
  |otherwise = maiores a xs

menores :: Ord a => a -> [a] -> [a]
menores a [] = []
menores a (x:xs)
  |x <= a = x : menores a xs
  |otherwise = menores a xs

