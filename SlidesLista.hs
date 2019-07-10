---Exercicios Slide de Listas---
--Slide 12--

ins :: Int -> [Int] -> [Int]
ins n [] = [n]
ins n (a:x)
   |n <= a = n:a:x
   |otherwise = a: ins n x

iSort :: [Int] -> [Int]
iSort[] = []
iSort(a:x) = ins a(iSort x)

maiorEmenor :: [Int] -> (Int, Int)
maiorEmenor x = (head(iSort x), head(reverse(iSort x)))

maiorEmenor2 :: [Int] -> (Int, Int)
maiorEmenor2 x = let x2 = iSort x
                 in(head x2, head(reverse x2))

insDec :: Int -> [Int] -> [Int]
insDec n [] = [n]
insDec n (a:x)
   |n >= a = n:a:x
   |otherwise = a : insDec n x

iSortDec :: [Int] -> [Int]
iSortDec[] = []
iSortDec(a:x) = insDec a(iSortDec x)