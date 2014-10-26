=begin
  Problem 4 - Largest palindrome product

  A palindromic number reads the same both ways. The largest palindrome made from the product
  of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
=end

require './lib/naturais'

ELEMENTOS = (100...1000).to_a

p ELEMENTOS.product(ELEMENTOS).
      map { |values| values.inject(:*) if values.inject(:*).palindrome? }.
      compact.
      uniq.
      max
