---Lista 8---

--Q1--

--head = [a] -> a
--tail = [a] -> [a]
--fst = (a, b) -> a
--shift = ((a, b), c) -> (a, (b,c))


--Q2--
concatena :: [[t]] -> [t]
concatena [] = []
concatena (x:xs) = x ++ concatena xs


--Q3--
inverte :: [t] -> [t]
inverte [] = []
inverte (a:x) = inverte x ++ [a]


--Q4--
ultimo :: [t] -> t
ultimo [] = error "Lista vazia não tem último elemento !"
ultimo [t] = t
ultimo (a:x) = ultimo x

inicio :: [t] -> [t]
inicio [] = []
inicio [x] = []
inicio (a:x) = a : inicio x


--Q5--
takePoli :: Int -> [t] -> [t]
takePoli n [] = []
takePoli n (a:x)
    |n /= 0 = a : takePoli (n-1) x
    |otherwise = takePoli n x

dropPoli :: Int -> [t] -> [t]
dropPoli n [] = []
dropPoli  n (a:x)
    |n /= 0 = dropPoli (n-1) x
    |otherwise = (a:x)