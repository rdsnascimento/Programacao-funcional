data Arvore a = No a [Arvore a]
    deriving(Eq, Show)

arv1 :: Arvore Int
arv1 = No 1 [No 3 [No 4[]], No 5[No 6[], No 7[], No 8[]]]

arv2 :: Arvore Int
arv2 = No 5 []

somaArvore :: Arvore Int -> Int
somaArvore (No a l) = a + foldr (+) 0 (map somaArvore l)

mult2 :: Arvore Int -> Arvore Int
mult2 (No a l) = No (2*a) (map mult2 l)

contaElem :: Arvore Int -> Int
contaElem (No a l) = 1 + foldr (+) 0 (map contaElem l)

maiorElem :: Arvore Int -> Int
maiorElem (No a l) = foldr max a (map maiorElem l)

existe ::  Int -> Arvore Int -> Bool
existe x (No a l) 
	| a == x = True
	| otherwise = foldr (||) False (map (existe x) l)