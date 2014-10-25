module Euler
  class Fibonacci
    def self.abaixo(limite)
      fib = [1, 2]

      loop do
        return yield fib[-2] if block_given?

        fib << fib[-1] + fib[-2]

        return fib if fib.last >= limite && fib.pop()
      end
    end
  end
end
