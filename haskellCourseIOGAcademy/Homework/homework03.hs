

-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

monthUsage c h = c * h * 30

test_consum c h t
  | monthUsage c h  > t = "over threshold of consumption"
  | monthUsage c  h ==  t = "on trheshold of consumption"
  | otherwise = "under threshold of consumption"

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.
test_consum' c h t
  | monthUsage c h  > t = "over threshold of consumption the excess is " ++ show(monthUsage c h -t)
  | monthUsage c  h ==  t = "on trheshold of consumption " ++ show(monthUsage c h -t)
  | otherwise = "under threshold of consumption the savings are " ++ show(t - monthUsage c h )

-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

longFunction a b c d  =
  if a > b -5  * 4 + d
    then a + (b + 3) /4 + c^3
    else  c + b*5 + 3 -d/5


shortFunction a b c d =
  let cond  b d = b -5  * 4 + d
      resultOne a b c = a + (b + 3) /4 + c^3
      resultTwo a b d = c + b*5 + 3 -d/5
  in if a > cond b d then resultOne a b c else resultTwo a b d


-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  


belowOne a b =
  if a > b && a /= 0
    then show(b / a)
  else
    if a < b  && b /= 0
      then show(a/b)
  else "divisor is null cannot divide"


belowOne' a b
  | a> b && a /= 0 = show(b/a)
  | a< b  && b /= 0 = show(a/b) 
  | otherwise = "divisor is null cannot divide"



-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

square a b = 
  let prod a b = a * b 
      quot a b = a /b 
      in 