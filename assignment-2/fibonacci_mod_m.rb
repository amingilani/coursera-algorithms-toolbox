#!/usr/bin/ruby

# given an input n m, find the nth fibonacci number % m
i = gets.chomp.split.map(&:to_i)
n = i[0]
m = i[1]

fib = [0, 1]
fib_m = [0, 1]

loop do
  fib << fib.last(2).reduce(0, :+)
  fib_m << fib.last % m

  break if fib_m.last(2) == [0, 1]
end

# the last two elements of the array are the repeating [0, 1]
cycle_length = fib_m.length - 2

puts fib_m[n % cycle_length]
