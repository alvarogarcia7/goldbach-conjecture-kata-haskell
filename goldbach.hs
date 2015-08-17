primes = [2, 3, 5, 7, 11, 13, 17]

goldbach :: Int -> Maybe [Int]
goldbach n = 
	case (is_goldbach n primes) of 
		 (Just _) -> (is_goldbach n primes)
		 Nothing -> Nothing


is_goldbach :: Int -> [Int] -> Maybe [Int]
is_goldbach n primes = 
	if n - prime `elem` primes
	  then Just [prime, n - prime]
	  else (is_goldbach n (tail primes))
	where prime = (head primes)
    
test_7 = goldbach 7 == Just [2, 5]
test_8 = goldbach 8 == Just [3, 5]
test_12 = goldbach 12 == Just [5, 7]