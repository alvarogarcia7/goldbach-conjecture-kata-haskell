# goldbach-conjecture-kata-haskell

[Raul Lorca](https://github.com/raullorca) and I practiced the [Goldbach conjecture](https://en.wikipedia.org/wiki/Goldbach%27s_conjecture) in haskell.

There is a description of the kata [here](https://gist.github.com/trikitrok/2d3de3d8418584184708) (copied below for archiving purposes), by [Manuel Rivero](https://github.com/trikitrok)

We did babysteps, as much as we could

Note: we copied the algorithm for generating primes from [here](https://wiki.haskell.org/Prime_numbers)

----

## Problem description

#Goldbach Conjecture Kata

(original source is [here](https://gist.github.com/trikitrok/2d3de3d8418584184708))

We'll be practicing recursion with the [Goldbach conjecture](https://en.wikipedia.org/wiki/Goldbach%27s_conjecture):  

>"Every even integer greater than 2 can be expressed as the sum of two primes"

Some examples of input and corresponding output:

* goldbach_partition_of(4)  ->  [2,2]
* goldbach_partition_of(6)  ->  [3,3]
* goldbach_partition_of(8)  ->  [3,5]
* goldbach_partition_of(10) ->  [5,5]

Source: [Solveet](http://www.solveet.com/)
