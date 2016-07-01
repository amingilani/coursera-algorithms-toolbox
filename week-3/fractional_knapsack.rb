#!/usr/local/bin/ruby

def fractional_knapsack(inputs)
  specs = inputs.shift
  bag_capacity = specs.last
  puts "bag capacity: #{bag_capacity}"

  # items are sorted by value_per_weight, highest first
  # each item is [value, weight, value_per_weight]
  items = inputs.map { |e| e << (e[0] / e[1]) }
                .sort_by { |e| e[2] }
                .reverse
  puts "items: #{items.to_s}"
  # the bag is empty
  bag = []
  bag_weight = 0

  while bag_weight <= bag_capacity
    break if items[0][1] > (bag_capacity - bag_weight)
    bag << items.shift[0..1]
    bag_weight = weigh bag
  end

  unless bag_capacity - bag_weight == 0
    puts "full items in bag: #{bag.to_s}"

    last_item = items.shift

    puts "last item: #{last_item}"

    fraction = (bag_capacity - bag_weight) / last_item[1]
    puts "fraction: #{fraction}"

    bag << items.shift[0..1].map { |e| e * fraction }

    puts "full bag: #{bag.to_s}"
  end

  bag_value = bag.reduce(0) { |a, e| a + e[0] }

  bag_value
end

def weigh(bag)
  bag.reduce(0) { |a, e| a + e[1] }
end

# comment in tests
inputs = $stdin.read
               .split("\n")
               .map(&:chomp)
               .map(&:split)
               .map { |e| e.map(&:to_f) }

## comment in live
# inputs = [[3.0, 50.0], [60.0, 20.0], [100.0, 50.0], [120.0, 30.0]]

puts fractional_knapsack inputs
