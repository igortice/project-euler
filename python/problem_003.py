__author__ = 'igor rocha'

"""
    Problem 3 - Largest prime factor

    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143 ?
"""

from euler import number

print(number.factors_prime(600851475143)[-1])