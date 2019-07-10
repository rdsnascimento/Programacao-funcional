---Lista 4---

---Q1---

dobraLista :: [Int] -> [Int]
dobraLista [] = []
dobraLista (a:x) = (a * 2) : dobraLista(x)

---Q2---

tamanho :: [Int] -> Int
tamanho [] = 0
tamanho (a:x) = 1 + tamanho(x)

---Q3---

produtoLista :: [Int] -> Int
produtoLista [] = 1
produtoLista (a:x) = a * produtoLista(x)

---Q4---

andLista :: [Bool] -> Bool
andLista [] = True
andLista (a:x) = a && andLista(x)

---Q5---

concatLista :: [[Int]] -> [Int]
concatLista [] = []
concatLista ((a:x):y) = (a:x) ++ concatLista(y)

---Q6---

inverteLista :: [Int] -> [Int]
inverteLista [] = []
inverteLista (a:x) = inverteLista(x) ++ [a]


