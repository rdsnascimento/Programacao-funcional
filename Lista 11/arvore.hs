data Arvore a = Folha a | Nodo a (Arvore a) (Arvore a)
    deriving(Eq, Show)

arv :: Arvore Int
arv = Nodo 100(Nodo 14 (Folha 15)(Folha 16)) (Nodo 3 (Folha 7)(Folha 3))

arv2 :: Arvore Int
arv2 = Nodo 100(Nodo 14 (Folha 15) (Folha 16)) (Nodo 3 (Nodo 7 (Folha 1) (Folha 13)) (Folha 3))

somaArvore :: Arvore Int -> Int
somaArvore (Folha n) = n
somaArvore (Nodo n a1 a2) = n + somaArvore a1 + somaArvore a2

--Q1--
mult2 :: Arvore Int -> Arvore Int
mult2 (Folha n) = Folha (2*n)
mult2 (Nodo n a1 a2) = Nodo(2*n) (mult2 a1) (mult2 a2)

--Q2--
contaElementos :: Arvore Int -> Int
contaElementos (Folha n) = 1
contaElementos (Nodo n a1 a2) = 1 + contaElementos a1 + contaElementos a2

--Q3--
maiorElemento :: Arvore Int -> Int
maiorElemento (Folha n) = n
maiorElemento (Nodo n a1 a2)
   |n > maiorElemento a1 && n > maiorElemento a2 = n 
   |maiorElemento a1 > maiorElemento a2 = maiorElemento a1
   |otherwise = maiorElemento a2

--Q4--
existe :: Arvore Int -> Int -> Bool
existe (Folha n) x = x == n
existe (Nodo n a1 a2) x
   |n == x = True
   |otherwise = (existe a1 x) || (existe a2 x)

--Q5--
repetidos :: Arvore Int -> Int -> Int
repetidos (Folha n) x
   |x == n = 1
   |otherwise = 0
repetidos (Nodo n a1 a2) x
   |x == n = 1 + repetidos a1 x + repetidos a2 x
   |otherwise = repetidos a1 x + repetidos a2 x

--Q6--
refleteArvore :: Arvore Int -> Arvore Int
refleteArvore (Folha n) = Folha n
refleteArvore (Nodo n a1 a2) = Nodo n a2 a1

--Q7--
altura :: Arvore Int -> Int
altura (Folha n) = 1
altura (Nodo n a1 a2)
   |altura a1 >= altura a2 = 1 + altura a1
   |otherwise = 1 + altura a2

--Q8--
arvToList :: Arvore Int -> [Int]
arvToList (Folha n) = [n]
arvToList (Nodo n a1 a2) = n : arvToList a1 ++ arvToList a2

--Q9--
mapTree :: (a -> b) -> Arvore a -> Arvore b
