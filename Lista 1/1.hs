---------------EXERCICIO 1---------------

osQuatroIguais :: Int -> Int -> Int -> Int -> Bool
osQuatroIguais a b c d = (a == b) && (a == c) && (a == d)

---------------EXERCICIO 2---------------

quantosSaoIguais :: Int -> Int -> Int -> Int
quantosSaoIguais a b c
    | a == b && a == c = 3
    | a == b || a == c || b == c = 2
    | otherwise = 0

---------------EXERCICIO 3---------------

todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c = (a /= b) && (a /= c) && (b /= c)

---------------EXERCICIO 6---------------

todosIguais :: Int -> Int -> Int -> Bool
todosIguais a b c = (a == b) && (a == c)

---------------EXERCICIO 7---------------

quantosSaoIguais2 :: Int -> Int -> Int -> Int --Utilizando as funções todosDiferentes e todosIguais
quantosSaoIguais2 a b c
   | todosIguais a b c == True = 3
   | todosDiferentes a b c == True = 0
   | otherwise = 2

---------------EXERCICIO 8---------------
elevadoDois :: Int -> Int
elevadoDois x = x * x

---------------EXERCICIO 9---------------
elevadoQuatro :: Int -> Int
elevadoQuatro x = (elevadoDois x) * (elevadoDois x)

---------------EXERCICIO 10---------------
vendas :: Int -> Int
vendas 0 = 10
vendas 1 = 22
vendas 2 = 13
vendas _ = 20
vendaTotal :: Int -> Int
vendaTotal 0 = vendas 0
vendaTotal x = vendas x + vendaTotal(x-1)