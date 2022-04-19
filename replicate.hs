main = print(myReplicate 5 "test code")


myReplicate :: Int -> a -> [a]
-- List comprehension that makes a list of length n and fills each index with variable a
myReplicate n a = [a | x<-[1..n]]
