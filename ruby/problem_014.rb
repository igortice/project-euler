=begin
  Problem 14 - Longest Collatz sequence

  The following iterative sequence is defined for the set of positive integers:

  n → n/2 (n is even)
  n → 3n + 1 (n is odd)

  Using the rule above and starting with 13, we generate the following sequence:

  13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
  It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

  Which starting number, under one million, produces the longest chain?

  NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def collatz_sequence_count(val)
  num_atual = val
  result    = 1

  return 1 if num_atual == 1

  while num_atual != 1
    if num_atual.even?
      num_atual = num_atual/2
    else
      num_atual = num_atual*3+1
    end

    result += 1
  end

  result
end

result              = {}
result[:numero]     = 0
result[:quantidade] = 0

(1...1_000_000).step(2).each do |ele|
  ele_collatz_count = collatz_sequence_count(ele)
  if ele_collatz_count > result[:quantidade]
    result[:numero]     = ele
    result[:quantidade] = ele_collatz_count
  end
end

p result[:numero]
