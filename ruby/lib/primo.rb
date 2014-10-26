module Euler
  require 'prime'

  class Primo
    def self.divisores(number)
      number.prime_division.transpose.first
    end
  end
end
