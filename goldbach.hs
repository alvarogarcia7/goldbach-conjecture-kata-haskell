primes = [2, 3, 5, 7, 11, 13, 17]

goldbach :: Int -> Maybe [Int]
goldbach n = 
	if n - first_prime `elem` primes
	  then Just [first_prime, n - first_prime]
	  else Nothing
	where first_prime = (head primes) 


test_7 = goldbach 7 == Just [2, 5]
test_8 = goldbach 8 == Just [3, 5]
