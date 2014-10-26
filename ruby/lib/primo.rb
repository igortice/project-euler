module Euler
  require 'prime'

  class Primo
    def self.divisores(number)
      number.prime_division.transpose.first
    end

    def self.posicao(number)
      Prime.first(number).last
    end
  end
end
