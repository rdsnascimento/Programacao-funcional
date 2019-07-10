somaTripla :: [(Int, Int, Int)] -> Int
somaTripla [] = 0
somaTripla((a, b, c):x) = a + b + c + somaTripla x

somaTupla :: [((Int, Int), (Int, Int))] -> Int
somaTupla [] = 0
somaTupla (((a,b),(c,d)):x) = a + b + c + d + somaTupla x

zipp :: [Int] -> [Int] -> [(Int, Int)]
zipp [][] = []
zipp [](a:x) = []
zipp (a:x)[] = []
zipp (a:x) (b:y) = (a,b): zipp x y

zipp3 :: [Int] -> [Int] -> [Int] -> [(Int, Int, Int)]
zipp3 [][][] = []
zipp3 [] y z= []
zipp3 x [] z = []
zipp3 x y [] = []
zipp3 (a:x) (b:y) (c:z) = (a,b,c) : zipp3 x y z

unZipp :: [(Int, Int)] -> ([Int], [Int])
unZipp [] = ([], [])
unZipp x = (unZippEsq x, unZippDir x)

unZippEsq :: [(Int, Int)] -> [Int]
unZippEsq [] = []
unZippEsq ((a,b):x) = a : unZippEsq x

unZippDir :: [(Int, Int)] -> [Int]
unZippDir [] = []
unZippDir ((a,b):x) = b : unZippDir x