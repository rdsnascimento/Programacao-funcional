---------------EXTRA 1---------------
palindromo :: String -> Bool
palindromo x = x == reverse x

---------------EXTRA 2---------------
verificaTriangulo :: Int -> Int -> Int -> Bool
verificaTriangulo a b c
    | a + b < c = False
    | a + c < b = False
    | b + c < a = False
    | otherwise = True

---------------EXTRA 3---------------
potencia :: Int -> Int -> Int
potencia x 1 = x
potencia x y = x * (potencia x (y-1))

---------------EXTRA 4---------------
fibonacci :: Int -> Int

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci(x-1) + fibonacci(x-2)

---------------EXTRA 5---------------
--isPrime :: Int -> Bool

---------------EXTRA 6---------------
bigger :: Int -> Int -> Int -> Int
bigger a b c
    | a > b && a > c = a
    | a > b && a < c = c
    | b > c = b
    | c > b = c
    