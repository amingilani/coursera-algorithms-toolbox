#!/usr/bin/ruby

# given a sequence of numbers, find the maximum product when multiplying two
# of them
require 'net/http'

array = $stdin.read.split

garray = array[1..-1].map(&:to_i)

# require 'set'
#
# def rand_n(n, max)
#     randoms = Set.new
#     loop do
#         randoms << rand(max)
#         return randoms.to_a if randoms.size >= n
#     end
# end

# def sort_array m
#   m.sort.map(&:to_i).last(2).reduce(&:*)
# end

def max_value m
    a = m.max
    b = m.count(m.max) > 1 ? a : (m - [m.max]).max
    puts "b is nil" if b.nil?
    puts "a is nil" if a.nil?
    a * b
end

# loop do
#   m = rand_n(rand(100) + 2, 10000000000000000000000000000000000000000000000)
#   puts m
#   sort = sort_array m
#   max = max_value m
#   puts "sort: #{sort}"
#   puts "max: #{max}"
#   break if sort != max
# end

puts max_value array
