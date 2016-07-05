#!/usr/local/bin/ruby

input = $stdin.read.chomp.split("\n").map { |e| e.split(' ') }
a = input[0][1..-1].map(&:to_i)
b = input[1][1..-1].map(&:to_i)

# a = [1, 5, 8, 12, 13]
# b = [8, 1, 23, 1, 11]

# puts a.to_s
# puts b.to_s

def search(term, list, left, right)
  middle = (left - right) / 2
  case
  when list[left] > term
    return -1
  when list[right] < term
    return -1
  when list[middle] < term
    left = middle + 1
    return search term, list, left, right
  when list[middle] > term
    right = middle - 1
    return search term, list, left, right
  when list[middle] == term
    return middle
  end
end

puts b.map{ |i| search i, a, 0, (b.length - 1) }.join(' ')
