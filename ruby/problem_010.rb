=begin
  Problem 10 - Summation of primes

  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.
=end

require './lib/primo'

p Euler::Primo.abaixo(2_000_000).inject(:+)
