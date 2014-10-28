=begin
  Problem 48 - Self powers

  The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

  Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
=end


p (1..1000).inject { |sum, ele| sum + ele**ele }.to_s[-10..-1].to_i