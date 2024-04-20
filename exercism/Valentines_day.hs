module ValentinesDay where

-- Define the function and required algebraic data types (ADT) below.

data Approval 
  = Yes  
  | No 
  | Maybe 


data Cuisine 
  = Korean 
  | Turkish 

data Genre 
  = Crime 
  | Horror 
  | Romance
  | Thriller

data Activity 
  = BoardGame
  | Chill 
  | Movie Genre
  | Restaurant Cuisine
  | Walk Int


