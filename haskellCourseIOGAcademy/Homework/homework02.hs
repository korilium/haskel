
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Float -> Float -> Float -> Float

f1 x y z = x ** (y/z)

f2 :: Float -> Float -> Float -> Float

f2 x y z = sqrt (x/y - z)


f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]


f4 :: String -> String -> String -> Bool  

f4 x y z = x == (y ++ z)


-- Question 2
-- Are really all variables in Haskell immutable? Try googling for the answer.

{-All variables are indeed immutable, but there are ways to construct mutable references where we can change what the reference points to.
-}



-- Question 3
-- Why should we define type signatures of functions? How can they help you? How can they help others?

{-It gives you a better understanding of the workings of a function and 
gives you a step by step guide on the process of the input to output journey of a function 
-}


-- Question 4
-- Why should you define type signatures for variables? How can they help you?

{- They can  help you define a variable 
-}
 
-- Question 5
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.


-- Question 6
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
