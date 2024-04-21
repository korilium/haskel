-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]


getFour :: [([Int], [Int])] -> Int
getFour [(_,[_,x]), _]  = x
getFour _ = 0







-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

list:: [Int] 
list = [1, 6, 8, 10]

removed:: [a] -> [a]
removed (_:_:_:xs) = xs 
removed x          = x   


removed'::  [a] -> [a]
removed' tuple = case tuple of 
    (_:_:_:xs) -> xs
    x -> x   


-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together
sumThreeTuple :: Num a => (a,a,a) -> a
sumThreeTuple (x, y, z) = x + y+ z 


-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.
checkEmpty :: [a] -> Bool 
checkEmpty [] = True 
checkEmpty x = False 


-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.

tail' (_:xs) = xs 
tail' [] = []  


-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

even':: Int -> Int 
even' x = case x `mod` 2 of 
             0 -> x +1 
             _ -> x


