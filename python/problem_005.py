__author__ = 'igor rocha'

"""
    Problem 5 - Smallest multiple

    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

from euler import number

print(number.is_divisible_by(range(1, 10)))