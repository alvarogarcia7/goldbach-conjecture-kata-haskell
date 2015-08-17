primes = [2, 3, 5, 7, 11, 13, 17]

goldbach :: Int -> Maybe [Int]
goldbach n = 
	if n - first_prime `elem` primes
	  then Just [first_prime, n - first_prime]
	  else if n - second_prime `elem` primes
	  	then Just [second_prime, n - second_prime]
	  	else Just [third_prime, n - third_prime]
      		
	where first_prime = (head primes)
	      second_prime = head (tail primes)
	      third_prime = primes !! 2
    
test_7 = goldbach 7 == Just [2, 5]
test_8 = goldbach 8 == Just [3, 5]
test_12 = goldbach 12 == Just [5, 7]