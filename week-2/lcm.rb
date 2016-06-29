#!/usr/bin/ruby

# given two numbers, find their least common multiple

def gcd a, b
    case b
    when 0
      return a
    else
      a_prime = a % b
      return gcd b, a_prime
    end
end

inputs = gets.split.map { |e| e.to_i }.sort.reverse

a = inputs[0]
b = inputs[1]

c = gcd a, b

puts a * b / c
