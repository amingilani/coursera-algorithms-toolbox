#!/usr/local/bin/ruby

# Given a set of n segments {[a0,b0],[a1,b1],...,[an-1,bn-1]} with integer
# coordinates on a line, find the minimum number m of points such that each
# segment contains at least one point. That is, find a set of integers X of
# the minimum size such that for any segment [ai,bi] there is a point x in set X
# such that ai <= x <= bi.

def points_batao(input)
  length = input.shift[0]
  lines = input.sort_by { |e| e[0] }.map { |e| (e[0]..e[1]).to_a }
  puts "lines are #{lines}"
  points = []
  loop do
    (0...lines.length - 1).each do |i|
      common_points = (lines[i] & lines[i + 1])
      points << lines[i] if common_points.empty?
      puts "points are #{points}"
    end
    if defined? previous_points
      break if previous_points == points
      previous_points = points
    else
      previous_points = points
    end
  end
end

# inputs = $stdin.read
#                .split("\n")
#                .map(&:chomp)
#                .map(&:split)
#                .map { |e| e.map(&:to_i) }

test_input_1 = [[3], [1, 3], [2, 5], [3, 6]]
test_input_2 = [[4], [4, 7], [1, 3], [2, 5], [5, 6]]

puts points_batao test_input_2
