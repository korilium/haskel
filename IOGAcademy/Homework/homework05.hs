-- Create a higher-order function that takes 3 parameters: A function and the two parameters that that function takes, and
-- flips the order of the parameters.
-- For example this: `(/) 6 2` returns `3`. But this: `flip' (/) 6 2` returns `0.3333333333`

import Data.Char (isUpper)


func :: Num a => a -> a -> a
func x y = x -3  + (y + 2) *3 

flipt :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3
flipt f x y   =  f y x 





-- Create the `uncurry'` function that converts a curried function to a function on pairs. So this: `(+) 1 2` that returns `3` can be written as
-- `uncurry' (+) (1,2)` (with the two different arguments inside a pair).

g x y = (*) x y  

g' (x, y) = (*) x y 




-- Create the `curry'` function that converts an uncurried function to a curried function. So this: `fst (1,2)` that returns `1` can be written as
-- `curry' fst 1 2` (with the tuple converted into two different arguments).

fst' x y = x



curry' f x y   =  f (x, y)


-- Use higher-order functions, partial application, and point-free style to create a function that checks if a word has an uppercase letter.
-- Start with using just higher-order functions and build from there. 


test = "Ape"
example :: [String]
example = ["Test", "help!", "yell!", "STOP", "nope"]
example1 = "Test"





upperCase :: [Char] -> Bool
upperCase = any isUpper

filterUpperCase = filter upperCase 

filterList = filterUpperCase 


-- better function 
upperCase2 :: [String] -> Bool
upperCase2[] = False 
upperCase2 (x:xs) 
    | any isUpper x = True  
    | otherwise = upperCase2 xs  

filterUpperCase2 = filter upperCase2 


check_h words = filter cond words
    where cond x =  any isUpper x 

--check_U word = isUpper 

-- Create the `count` function that takes a team ("Red", "Blue", or "Green") and returns the amount of votes the team has inside `votes`.

votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]
teams = ["Red", "Blue", "Green"]



count team votes = length $ filter (== team) votes



-- Create a one-line function that filters `cars` by brand and then checks if there are any left.

cars :: [(String,Int)]
cars = [("Toyota",0), ("Nissan",3), ("Ford",1)]

 cars2 $ filter (== cars1) cars