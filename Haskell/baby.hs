doubleMe x = x + x
doubleUs x y = x*2 + y*2

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY"
lucky x = "not"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib(x-2)+fib(x-1)

capital :: String -> String
capital "" = "Empty"
captial all@(x:xs) = "The first of " ++ all ++ " is " ++ [x]

ageRank :: (RealFloat a) => a -> String
ageRank age
  | age <= young = "Young"
  | age <= middle = "Middle"
  | otherwise = "Ancient"
  where (young, middle, old) = (20,40,60)

max' :: (Ord a) => [a] -> a
max' [] = error "Empty"
max' [x] = x
max' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = max' xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerSorted = quicksort [a | a <- xs, a <=x]
      biggerSorted = quicksort [a | a <- xs, a>x]
  in  smallerSorted ++ [x] ++ biggerSorted

prod :: (RealFloat a) => [a] -> a
prod [] = 1
prod (x:xs) = x * prod xs

reduce :: (a -> b -> c) -> [a] -> [b] -> [c]
reduce _ [] _ = []
reduce _ _ [] = []
reduce f (x:xs) (y:ys) = f x y : reduce f xs ys

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
  where p x = x `mod` 3829 == 0

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
  | even n = n:chain (n `div` 2)
  | odd n = n:chain (1 + n * 3)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
  where isLong xs = length xs > 15

--sum' :: (Num a) => [a] -> a
--sum' xs = foldl (\acc x -> acc + x) 0 xs

sum' :: (Num a) => [a] -> a  
sum' = foldl (+) 0  

