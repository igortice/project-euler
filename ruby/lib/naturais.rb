class Integer
  def palindrome?
    self == self.to_s.reverse.to_i
  end

  def fatorial
    (1..self).inject(:*) || 1
  end

  def sum_chars
    self.to_s.chars.map(&:to_i).inject(:+)
  end

  def quantidade_divisores
    require 'prime'

    self.prime_division.transpose.last.inject(1) { |res, ele| res * (ele+1) }
  end
end

module Euler
  class Naturais

    def self.sum_squares(lim)
      (1..lim).inject(0) { |sum, num| sum + num**2 }
    end

    def self.square_sum(lim)
      (1..lim).inject(:+)**2
    end


  end
end
