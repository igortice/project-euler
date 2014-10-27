=begin
  Problem 9 - Special Pythagorean triplet

  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

  a^2 + b^2 = c^2
  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
=end

LIMITE = 1000

result = nil

catch :sair do
  (1..LIMITE).each do |a|
    (a..LIMITE).each do |b|
      if a < b
        c = Math.sqrt(a**2 + b**2)
        if (b < c) and (a+b+c == LIMITE)
          result = a*b*c.to_i

          throw :sair
        end
      end
    end
  end
end

p result
