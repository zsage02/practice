main = print(positions 1 [1,0,0,1,0,1,1,0])

positions :: Eq a => a -> [a] -> [Int]
-- zip pairs list given to positions with an index list
-- find uses zipped list and value given to positions and checks what indexs the value is at and returns a list of them to positions
positions x xs = find x (zip xs [0..((length xs)-1)])

find :: Eq a => a -> [(a,b)] -> [b] 
find k t = [v| (k',v) <-t, k==k'] 
