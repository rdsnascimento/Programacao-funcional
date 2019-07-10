---Lista 5---
--Q1--

membro :: [Int] -> Int -> Bool
membro [] n = False
membro (a:x) n
   |a == n = True
   |otherwise = membro x n

--Q2--

membroNum :: [Int] -> Int -> Int
membroNum [] n = 0
membroNum (a:x) n
   |a == n = 1 + membroNum x n
   |otherwise = membroNum x n

--Q3--
membro2 :: [Int] -> Int -> Bool
membro2 [] n = False
membro2 (a:x) n
   |membroNum (a:x) n > 0 = True
   |otherwise = False

--Q4--

unico :: [Int] -> [Int]
unico l = unico2 l l

unico2 :: [Int] -> [Int] -> [Int]
unico2 [] y = []
unico2 (a:x) y
   |membroNum y a == 1 = a : unico2 x y
   |otherwise = unico2 x y
   
--Q5--

