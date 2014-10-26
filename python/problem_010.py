__author__ = 'igor rocha'

"""
    Problem 10 - Summation of primes

    The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

    Find the sum of all the primes below two million.
"""

from euler import primo

print(sum(primo.abaixo(2000000)))