__author__ = 'igortice'

from math import floor, sqrt

try:
    long
except NameError:
    long = int


def factors_prime(n):
    step = lambda x: 1 + (x << 2) - ((x >> 1) << 1)
    maxq = long(floor(sqrt(n)))
    d = 1
    q = n % 2 == 0 and 2 or 3
    while q <= maxq and n % q != 0:
        q = step(d)
        d += 1
    return q <= maxq and [q] + factors_prime(n // q) or [n]


def all_divisors(x):
    div_list = []
    y = 1
    while y <= sqrt(x):
        if x % y == 0:
            if not y in div_list: div_list.append(y)
            if not int(x / y) in div_list: div_list.append(int(x / y))
        y += 1
    return div_list
