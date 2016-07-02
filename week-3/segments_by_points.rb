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
  tmp = []
  lines.each_with_index do |m, i|
    puts "going over line #{m}"
    if tmp.empty?
      tmp += m
      puts "tmp is empty, adding #{tmp}"
      next
    end
    common_points = tmp & m
    puts "common_points: #{common_points}"
    if common_points.empty?
      points << tmp.first
      tmp = m
      puts "Adding #{tmp.first} to points: #{points}"
      puts "Adding #{m} to tmp"
      next
    end
    if i == length - 1
      points << tmp.last
      puts "Adding #{tmp.first} to points: #{points}"
      next
    end
    tmp = common_points
  end
  points
end

# inputs = $stdin.read
#                .split("\n")
#                .map(&:chomp)
#                .map(&:split)
#                .map { |e| e.map(&:to_i) }

test_input_1 = [[3], [1, 3], [2, 5], [3, 6]]
test_input_2 = [[4], [4, 7], [1, 3], [2, 5], [5, 6]]

puts points_batao test_input_2
