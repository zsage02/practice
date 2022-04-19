main = print(scalarproduct [-1,2,3] [-4,-5,6])

scalarproduct :: [Int] -> [Int] -> Int
-- zip pairs two lists given to scalarpdouct, then list comprehension is filled with the product of each pair
-- sum adds up all the values within said list
scalarproduct xs ys = sum[x*y | (x,y) <- zip xs ys]
