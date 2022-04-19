main = print(positions 1 [1,0,0,1,0,1,1,0])


myReplicate :: Int -> a -> [a]
-- List comprehension that makes a list of length n and fills each index with variable a
myReplicate n a = [a | x<-[1..n]]

perfects :: Int -> [Int]
-- List comprehension that goes through every number from 1 to n and checks if sum of embedded list comprehension is equal to x
-- Embedded list comprehension is a list of every value that divides x (by checking if remainder is 0)
perfects n = [x | x<-[1..n], sum[a | a<-[1..(x-1)], x `mod` a == 0] == x]

positions :: Eq a => a -> [a] -> [Int]
-- zip pairs list given to positions with an index list
-- find uses zipped list and value given to positions and checks what indexs the value is at and returns a list of them to positions
positions x xs = find x (zip xs [0..((length xs)-1)])

find :: Eq a => a -> [(a,b)] -> [b] 
find k t = [v| (k',v) <-t, k==k'] 

scalarproduct :: [Int] -> [Int] -> Int
-- zip pairs two lists given to scalarpdouct, then list comprehension is filled with the product of each pair
-- sum adds up all the values within said list
scalarproduct xs ys = sum[x*y | (x,y) <- zip xs ys]
