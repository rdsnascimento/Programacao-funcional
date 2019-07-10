---Lista 9---
--Pra usar direto no termial--
--filter (\c -> c /= ' ')
--ou
--filter (/= ' ')
--Q1--
concatena :: [[a]] -> [a]
concatena a = foldr1 (++) a

--Q2--
and1 :: [Bool] -> Bool
and1 a = foldr1 (&&) a

--Q3--
par :: Int -> Bool
par x = x `mod` 2 == 0

pares :: [Int] -> [Int]
pares x = filter par x

--Q4--
inverte :: [t] -> [t]
inverte x = foldr (\a b -> b ++ [a]) [] x

--Q5--
quadrado :: Int -> Int
quadrado x = x*x

somaQuad :: [Int] -> Int
somaQuad x = foldr1 (+) (map quadrado x)

--Q6--
positivo :: Int -> Bool
positivo x = x >= 0

somaQuadPos :: [Int] -> Int
somaQuadPos x = foldr1 (+) (map quadrado (filter positivo x))

--Q7--
numElemts :: [Int] -> Int
numElemts x = foldr1 (+) (map (^0) x)

tamanhoFoldMap2 :: [a] -> Int
tamanhoFoldMap2 l = foldr (+) 0 (map (\x -> 1) l)

--Q8--
somaElemList :: [[Int]] -> Int
somaElemList x = foldr (+) 0 (map (foldr (+) 0) x)