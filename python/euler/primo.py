__author__ = 'igortice'

from sympy import prime, primerange


def posicao(num):
    return prime(num)


def abaixo(lim):
    for pri in primerange(1, lim):
        yield pri