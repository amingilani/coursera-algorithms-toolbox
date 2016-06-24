#!/usr/bin/ruby

# given an input i, find the ith fibonacci number
i = gets.to_i

fibonacci = [0, 1]

while fibonacci.length - 1 <= i
  last = fibonacci.length - 1
  fibonacci << fibonacci[last] + fibonacci[last - 1]
end

puts fibonacci.last
