---Lista 6---
--Q1--

retornaUltimo :: [Int] -> Int
retornaUltimo [y] = y
retornaUltimo (a:x) = retornaUltimo x

--Q2--

pegaPosicao :: Int -> [Int] -> Int
pegaPosicao n (a:x)
    |n == 1 = a
    |otherwise = pegaPosicao (n-1) x

--Q3--

pega :: Int -> [Int] -> [Int]
pega n [] = []
pega n (a:x)
    |n >= 1 = a : pega(n-1) x
    |n == 0  = []

--Q4--

retira :: Int -> [Int] -> [Int]
retira n [] = []
retira n (a:x)
    |n == 1 = x
    |otherwise = retira(n-1) x

--Q5--

media :: [Float] -> Float
media y = (media2 y) / fromIntegral((length y))

media2:: [Float] -> Float
media2 [] = 0
media2 (a:x) = a + media2(x)
 
--Q6--

pegaMaiores :: Int -> [Int] -> [Int]
pegaMaiores n [] = []
pegaMaiores n (a:x)
    |a > n = a : pegaMaiores n x
    |otherwise = pegaMaiores n x

--Q7--

contaMaiores :: Int -> [Int] -> Int
contaMaiores n [] = 0
contaMaiores n (a:x)
    |a > n = 1 + contaMaiores n x
    |otherwise = contaMaiores n x

--Q8--

concatena :: [t] -> [t] -> [t]
concatena x y = x ++ y

--Q9--

intercala :: [Int] -> [Int] -> [Int]
intercala [] [] = []
intercala [] (b:y) = b : intercala [] y
intercala (a:x) [] = a : intercala x []
intercala (a:x) (b:y) = a : b : intercala x y

--Q10--

compress :: [Char] -> [Char]
compress [] = []
compress [x] = [x]
compress (a:x:xs)
    |a == x = compress (x:xs)
    |otherwise = a : (compress (x:xs))

pack :: String -> [String]
pack [] = []
pack (x:xs) = pegaElementos x (x:xs) : pack (tiraElementos x (x:xs))

pegaElementos :: Char -> String -> String
pegaElementos x [] = []
pegaElementos a (x:xs)
    |a /= x = []
    |otherwise = a : pegaElementos a xs

tiraElementos :: Char -> String -> String
tiraElementos x [] = []
tiraElementos a (x:xs)
    |a == x = tiraElementos a xs
    |otherwise = x:xs