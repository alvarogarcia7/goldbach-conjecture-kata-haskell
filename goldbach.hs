primes = [2, 3, 5, 7, 11, 13, 17]

goldbach :: Int -> [Int]
goldbach n = [first_prime, n - first_prime] where
	  first_prime = (head primes) 


test_7 = goldbach 7 == [2, 5]