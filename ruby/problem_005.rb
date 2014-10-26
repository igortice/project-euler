=begin
  Problem 3 - Smallest multiple

  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

# FORMA ELEGANTE
#p (1..20).inject(:lcm)

result = 20

catch :sair do
  loop do
    11.upto(20).each do |num|
      break if result % num != 0

      throw :sair if num == 20 && result % num == 0
    end
    result += 20
  end
end

p result
