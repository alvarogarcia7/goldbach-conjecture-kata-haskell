{-# OPTIONS_GHC -O2 #-}
import Data.Array.Unboxed
 
primesToA m = sieve 3 (array (3,m) [(i,odd i) | i<-[3..m]]
                        :: UArray Int Bool)
  where
    sieve p a 
      | p*p > m   = 2 : [i | (i,True) <- assocs a]
      | a!p       = sieve (p+2) $ a//[(i,False) | i <- [p*p, p*p+2*p..m]]
      | otherwise = sieve (p+2) a

goldbach :: Int -> Maybe [Int]
goldbach n = is_goldbach n primes
  where primes = primesToA n


is_goldbach :: Int -> [Int] -> Maybe [Int]
is_goldbach n primes = 
	if n - prime `elem` primes
	  then Just [prime, n - prime]
	  else (is_goldbach n (tail primes))
	where prime = (head primes)
    
test_7 = goldbach 7 == Just [2, 5]
test_8 = goldbach 8 == Just [3, 5]
test_12 = goldbach 12 == Just [5, 7]