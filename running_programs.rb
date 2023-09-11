#printing in ruby

puts(2 + 2)

puts("Hello World")

puts("Hello World".upcase)

#Strings in Ruby

x, y, z = 12, 36, 72

puts "Sum is #{x + y + z}" 

puts "Average is #{(x + y + z)/3}"

#Single Quote String literals, use \ and then put apostrophe
puts 'Won\'t you read O\'Reilly\'s book?'

puts "What is 2 squared, it\'s #{2 ** 2}"


#Some string methods

puts "Hello World".class 
puts "Hello World".reverse 
puts "Hello World" + " and goodbye"
puts "Hello" * 5
puts "Hello, World".sub("Hello", "Good Morning")
puts "Hello World".gsub("l", "s") #Global substitution
puts "Hello World".include?("World")
puts "THIS IS A CAPS LOCK".downcase
puts "AHOY THERE MATEY".downcase.include?("ahoy")
puts "Example of index of strings" =~ /index/  #gets the start of the index of character or word 

puts "Hello World"[6]
puts "Helo World".match(/elo/)[0]
puts "SOIFJOSDFJSDIFJOSI"[-1]
puts "SODIFJSDFO"[100] #nil or blank

#integers, floats
puts 3.to_f
puts 3.000.to_i
puts "205".to_i
puts 2523635.to_s
puts 3 != 5
puts 4 <= 7
puts 5.even?
puts 4.odd?
puts 12.digits
5.times do puts "hello, world" end
3.times { puts "This is an example"}
5.times do |n| puts "index #{n}" end 
puts 4.5.ceil
puts 4.5.floor
puts 4.4.round 
puts 4.4.ceil
puts -1.positive?
puts -1.negative? 
puts -1.4.positive?