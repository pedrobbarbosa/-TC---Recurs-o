-- Dado dois valores x e y, retornar o par (min, max) onde min é o menor valorese max o maior valor
minAndMax :: Int -> Int -> (Int, Int)
minAndMax x y 
 | x >= y = (y, x)
 | otherwise = (x,y)

addPair :: (Int, Int) -> Int
addPair (x,y) = x + y

-- Crie uma função que dada uma lista retorne o tamanho da lista
length_ :: [Int] -> Int
length_ [] = 0
length_ (x:xs) = 1 + length_ xs

-- Crie uma função que retorne a soma dos elementos da lista
sum_all_numbers :: [Int] -> Int
sum_all_numbers [] = 0
sum_all_numbers (x:xs) = x + sum_all_numbers xs

main = do
  print(sum_all_numbers [1,3,4]) -- 8
  print(sum_all_numbers [4,4]) -- 8
  print(sum_all_numbers [3,3,3]) -- 9
  print(sum_all_numbers [2,2,2]) -- 6

