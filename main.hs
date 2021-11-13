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


doubleList :: [Int] -> [Int]
doubleList list_ = [2 * n | n <- list_]


addPairs :: [(Int, Int)] -> [Int]
addPairs list_ = [m+n | (m, n) <- list_]


-- Teoria da Computação - Haskell (Atividade 1)
-- Questões
-- 1º) [x] - Defina uma função recursiva que permita calcular o fatorial duplo. 
-- O fatorial duplo de um número natural n é o produto de todos os número de 1 (ou 2) até n , contados de 2 em 2. Por exemplo, o fatorial duplo de 8 é 8 x 6 x 4 x 2 = 384, e o fatorial duplo de 7 é 7 x 5 x 3 x 1 = 105

doubleFac :: Int -> Int
doubleFac n
 | n == 0 = 1
 | n == 1 = 1
 | n > 0 = n * doubleFac (n-2)


-- 2º) Defina uma função recusiva que recebe dois números naturais m e n e retorna o produto de todos os número no intervalo [m,n].
-- [1,5] -> 1 x 2 x 3 x 4 x 5 =  25 x 4 = 100
-- [2,7] -> 2 * 3 * 4 * 5 * 6 * 7 =  25 x 4 = 100
-- m = 1
-- n = 5

-- sumInterval_ 1 5
-- 5 * sumInterval_ 1 (4)
-- 5 * 4 * sumInterval_ 1 (3)
-- 5 * 4 * 3 * sumInterval_ 1 (2)
-- 5 * 4 * 3 * 2 sumInterval_ 1 (2-1)
-- 5 * 4 * 3 * 2 * 1 sumInterval_ 1 (1-1)
-- 5 * 4 * 3 * 2 * 1 * 1

sumInterval_ :: Int -> Int -> Int
sumInterval_ m n
 | n == 0 = 1
 | n == 1 = 1
 | n > m = n * sumInterval_ m (n-1)

main = do
  print(sumInterval_ 1 5)
  print(sumInterval_ 1 7)