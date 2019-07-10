dobra :: [Int] -> [Int]
dobra xs = [2*x | x <- xs]

dobraMaiorQueTres :: [Int] -> [Int]
dobraMaiorQueTres xs = [2*x | x <- xs, x>3]

somaTuplas :: [(Int,Int)] -> [Int]
somaTuplas xs = [a+b | (a,b) <- xs]

membro :: [Int] -> Int -> Bool
membro xs v = [x | x <- xs, v==x] /= []

produtoCart :: [Int] -> [Int] -> [(Int, Int)]
produtoCart l1 l2 = [(a,b) | a <- l1, b <- l2]

