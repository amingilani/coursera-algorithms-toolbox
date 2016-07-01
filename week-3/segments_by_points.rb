#!/usr/local/bin/ruby

# Given a set of n segments {[a0,b0],[a1,b1],...,[an-1,bn-1]} with integer
# coordinates on a line, find the minimum number m of points such that each
# segment contains at least one point. That is, find a set of integers X of
# the minimum size such that for any segment [ai,bi] there is a point x in set X
# such that ai <= x <= bi.

inputs = $stdin.read
               .split("\n")
               .map(&:chomp)
               .map(&:split)
               .map { |e| e.map(&:to_i) }
test_input_1 = [[3], [1, 3], [2, 5], [3, 6]]

def points(input)
  length = input.shift[0]
  lines = input.sort_by { |e| e[0] }
  smallest_point = lines.map { |e| e[0] }.minimum
  largest_point = lines.map { |e| e[0] }.maximum
  points = []

end
