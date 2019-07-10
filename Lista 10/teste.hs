leNomes :: IO [String]
leNomes = do
	nome <- getLine
	if(nome == "")
		then return []
		else do
			nomes <- leNomes
			return (nome : nomes)

main :: IO ()
main = do
	nomes <- leNomes
	putStr ((foldr (++) [] .
		map (++"\n") .
		iSort) nomes)

iSort :: Ord a => [a] -> [a]
iSort [] = []
iSort (x:xs) = ins x (iSort xs)

ins x [] = [x]
ins x (y:ys)
   | x <= y    = x : y : ys
   | otherwise = y : ins x ys