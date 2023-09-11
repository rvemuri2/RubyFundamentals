arr = [1, 2, 3, 4, 5]
puts arr

puts arr[0]
puts arr[-1]
puts arr[-2]
puts arr[2]
puts [1, 2][0]
puts [1, 2][1]
puts [1,2][2]

puts arr[0] * 5

puts arr[1] * arr[-1]

arr[0] = 25
puts arr

arr[-1] = arr.length * 10
puts "Last element is now #{arr[-1]}" 

puts arr << 100 #Adds to the end of the array 

puts "New array is #{arr.push(32)} "

puts "New array is #{arr.push("Hello")}"

puts "Element that was taken out #{arr.pop}, so new array is #{arr}"

puts "#{arr.unshift("World")}" #Adds to front of array

puts "Element removed: #{arr.shift}" 

puts "#{arr.prepend("Hello, World!")}"

puts arr.length 

framework = ["Ruby", "on", "Rails"]

puts framework.join

puts framework.join(" ")

puts framework.join("| | |")

puts "#{"Ruby on Rails".split}" 

puts "#{"Ruby on Rails".split("")}"
puts "#{"Ruby on Rails".split("").size}" 

puts "Ruby on Rails".split.join
puts "#{"Ruby on Rails".split.join.split("")}"

puts "This is another way #{"Ruby on Rails".scan(/\w/)}"

arr1 = [10, 20, 30, 40, 50]

arr2 = [60, 70, 80, 90, 100]

puts "#{arr1 + arr2}"

puts "#{arr1 - arr2}"

puts "#{arr2 - arr1}"

puts arr.empty? 

puts arr.include?("Hello")

puts arr.include?(3)

puts arr.first

puts arr.last

puts "#{arr.first(3)}"

puts "#{arr.reverse()}"