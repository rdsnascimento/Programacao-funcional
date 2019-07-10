---Lista 7---

--Q2--

foldInt :: (Int -> Int -> Int) -> [Int] -> Int
foldInt f [x] = x
foldInt f (a:x) = f a (foldInt f x)

soma :: Int -> Int -> Int
soma x y = x + y



--Q4--

filterString :: (Char -> Bool) -> [Char] -> [Char]
filterString f [] = []
filterString f (a:x)
    |f a == True = a : filterString f x
    |otherwise = filterString f x

naoEspaco:: Char -> Bool
naoEspaco x = x /= ' '



--Q6--

mapInt :: (Int -> Int) -> [Int] -> [Int]
mapInt f [] = []
mapInt f (a:x) = f a : mapInt f x

quadrado :: Int -> Int
quadrado a = a*a



--Q8--

duasVezes :: (Int -> Int) -> Int -> Int
duasVezes f n = f (f n)



--Q9--

inter :: Int -> (Int -> Int) -> Int -> Int
inter rep f n
    |rep == 1 = f n
    |rep /= 0 = f (inter (rep-1) f n)
    |rep == 0 = -1




