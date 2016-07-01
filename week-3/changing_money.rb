#!/usr/local/bin/ruby

# The goal in this problem is to find the minimum number of coins needed to
# change the input value (an integer) into coins with denominations 1, 5, and
# 10.

money = gets.chomp.to_i

tenners = money / 10
fivers = (money - tenners * 10) / 5
onners =  money - tenners * 10 - fivers * 5

puts tenners + fivers + onners
