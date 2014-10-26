module Euler
  require 'prime'

  class Primo
    def self.divisores(number)
      number.prime_division.transpose.first
    end

    def self.posicao(number)
      Prime.first(number).last
    end

    def self.abaixo(limite)
      primos = []

      Prime.each(limite) do |pri|
        if block_given?
          return yield pri
        else
          primos << pri
        end
      end

      primos
    end
  end
end
