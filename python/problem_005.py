__author__ = 'igor rocha'

"""
    Problem 5 - Smallest multiple

    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

result = 20

continuar = True

while continuar:
    for num in range(11, 21):
        if result % num != 0:
            break

        if num == 20 and result % num == 0:
            continuar = False
            break

    result += 20

print(result)