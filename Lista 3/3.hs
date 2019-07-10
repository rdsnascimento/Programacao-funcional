------Lista 3------

---Q1---
adicionaTupla :: (Int, Int) -> Int
adicionaTupla (x,y) = x+y

---Q2---
shift :: ((Int, Int), Int) -> (Int, (Int, Int))
shift ((x, y), z) = (x, (y, z))

---Q3---
minEmax :: Int -> Int -> Int -> (Int, Int)
minEmax x y z
   |x > y && x > z && y < z = (x, y)
   |x > y && x > z && z < y = (x, z)
   |y > x && y > z && x < z = (y, x)
   |y > x && y > z && z < x = (y, z)
   |z > x && z > y && x < y = (z, x)
   |z > x && z > y && y < x = (z, y)

---Q4--- ---CORRIGIR---
ordenaTupla :: (Int, Int, Int) -> (Int, Int, Int)
ordenaTupla (x, y, z)
   |x < y && x < z && y < z = (x, y, z)
   |x < y && x < z && z < y = (x, z, y)
   |y < x && y < z && x < z = (y, x, z)
   |y < x && y < z && z < x = (y, z, x)
   |z < x && z < y && x < y = (z, x, y)
   |z < x && z < y && y < x = (z, y, x)

---Q5---
---zeroVenda :: Int -> (Int, Bool)
---zeroVenda x
---   |venda x == 0 = (x, True)
---   |otherwise = (-1, False)

---Q6---
type Livro = (String, String, Int)
l1 :: Livro
l1 = ("Livro1", "Autor1", 1)
l2 :: Livro
l2 = ("Livro2", "Autor2", 2)
l3 :: Livro
l3 = ("Livro3", "Autor3", 3)

retornaTitulo :: Livro -> String
retornaTitulo (x, y, z) = x
retornaAutor :: Livro -> String
retornaAutor (x, y, z) = y
retornaIsbn :: Livro -> Int
retornaIsbn (x, y, z) = z