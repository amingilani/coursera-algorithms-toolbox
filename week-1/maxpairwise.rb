#!/usr/bin/ruby

# given a sequence of numbers, find the maximum product when multiplying two
# of them

array = $stdin.read.split[1..-1]
puts array.sort.map(&:to_i).last(2).reduce(&:*)
