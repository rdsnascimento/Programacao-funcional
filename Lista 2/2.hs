--------Lista 2--------

--------Q1--------

maxi :: Int -> Int -> Int
maxi a b
    | a > b = a
    | otherwise = b



--------Q2--------
venda :: Int -> Int
venda 0 = 12
venda 1 = 5
venda 2 = 7
venda 3 = 18
venda 4 = 23
venda 5 = 6
venda n = 20

maiorVenda :: Int -> Int

maiorVenda 0 = venda 0
maiorVenda x = maxi (venda x) (maiorVenda (x-1))



--------Q4--------
zeroVendas :: Int -> Int
zeroVendas 0
    |venda 0 == 0 = 0
    |venda 0 /= 0 = -1
zeroVendas x
    |venda x == 0 = x
    |venda x /= 0 = zeroVendas(x-1)



--------Q5--------
vendaS :: Int -> Int -> Int
vendaS x 0
   |venda 0 == x = 0
   |venda 0 /= x = -1
vendaS x y
   |venda y == x = y
   |venda y /= x = vendaS (x) (y-1)



--------Q6--------
--Passaria valor de S == 0



--------Q7--------
vendaSAlt :: Int -> Int -> Int -> Int
vendaSAlt s 0 n = vendaS s n
vendaSAlt s m n
    |n == m && n == s = n
    |n < m = -1
    |venda n == s = n
    |venda n /= s = vendaSAlt (s) (m) (n-1)



--------Q8--------
fat :: Int -> Int
fat 0 = 1
fat x = x * fat(x-1)

--------Q10--------
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)