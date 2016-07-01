#!/usr/local/bin/ruby

# The goal is, given two sequences a1, a2, . . . , an and b1, b2, . . . , bn,
# find a permutation π of the second sequence such that the dot product of
# a1,a2,...,an and bπ1,bπ2,...,bπn is minimum.

def dot_product(array)
  length = array[0][0]
  array_a = array[1].sort
  array_b = array[2].sort.reverse
  (0...length).reduce(0){ |a, e| a + (array_a[e] * array_b[e]) }
end



inputs = $stdin.read
               .split("\n")
               .map(&:chomp)
               .map(&:split)
               .map { |e| e.map(&:to_i) }

# test_input_1 = [[3.0], [1.0, 3.0, -5.0], [-2.0, 4.0, 1.0]]

puts dot_product inputs
