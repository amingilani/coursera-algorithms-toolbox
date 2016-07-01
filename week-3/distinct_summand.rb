#!/usr/local/bin/ruby

# Given a set of n segments {[a0,b0],[a1,b1],...,[an-1,bn-1]} with integer
# coordinates on a line, find the minimum number m of points such that each
# segment contains at least one point. That is, find a set of integers X of
# the minimum size such that for any segment [ai,bi] there is a point x in set X
# such that ai <= x <= bi.

# test_input = 24

def summand(n)
  i = 1
  sums = []
  loop do
    # puts "checking #{i}"
    break if n - sum(sums) <= 0
    # puts "i + sum(sums) <= n:  #{i + sum(sums) <= n}"
    # puts "n - (i + sum(sums)) >= i: #{n - (i + sum(sums))} >= #{i} :#{n - (i + sum(sums)) >= i}"
    if i + sum(sums) <= n && (n - i - sum(sums) > i || n - i - sum(sums) == 0)
      sums << i
      # puts "found #{i}"
    end
    i += 1
  end
  puts sums.length
  puts sums.join(' ')
end

def sum(a)
  a.reduce(0, :+)
end

inputs = gets.chomp.to_i
# test_input = 24

puts summand(inputs)
