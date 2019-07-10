--Q3--
removeEspacos :: String -> String
removeEspacos x = [a | a <- x, a /= ' ']

--Q4--
sings :: [[a]] -> [a]
sings xs = [x | [x] <- xs]

--Q5--

matches :: Int -> [Int] -> [Int]
matches n [] = []
matches n (a:x)
    |n == a = n : matches n x
    |otherwise = matches n x

--Q6--

elemento :: Int -> [Int] -> Bool
elemento n x
    |matches n x == [] = False
    |otherwise = True

--Q7--
divisores :: Integer -> [Integer]
divisores x = divisor x x

divisor :: Integer -> Integer -> [Integer]
divisor x 1 = [1]
divisor x y
    |x `mod` y == 0 = divisor x (y-1) ++ [y]
    |otherwise = divisor x (y-1)

--Q8--
isPrime :: Integer -> Bool
isPrime x = length (divisores x) == 2

--Q9--
quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (a:l) = quickSort (menores a l) ++ [a] ++ quickSort (maiores a l)

menores :: Ord a => a -> [a] -> [a]
menores a [] = []
menores a (x:xs)
    |x <= a = x : menores a xs
    |otherwise = menores a xs

maiores :: Ord a => a -> [a] -> [a]
maiores a [] = []
maiores a (x:xs)
    |x >= a = x : maiores a xs
    |otherwise = maiores a xs