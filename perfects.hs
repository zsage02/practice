main = print(perfects 9000)


perfects :: Int -> [Int]
-- List comprehension that goes through every number from 1 to n and checks if sum of embedded list comprehension is equal to x
-- Embedded list comprehension is a list of every value that divides x (by checking if remainder is 0)
perfects n = [x | x<-[1..n], sum[a | a<-[1..(x-1)], x `mod` a == 0] == x]
