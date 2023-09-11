credentials = {public_key: "12345", secret_key: "abcde"}

puts credentials[:public_key] 

puts credentials[:public_key] = "678910"

puts credentials 

puts credentials[:region] = "aws-east-2"

puts credentials

puts credentials.size()

puts "#{credentials.keys()}"

puts "#{credentials.values()}"

me = {name: "Rohit", age: 23, hobbies: ["cricket", "reading", "coding"]}

puts me

puts "#{me[:hobbies]}"
puts "#{me[:hobbies].join(", ")}"
puts me[:hobbies].size() 

pets = {
    dog: {name: "Sport"}, 
    cat: {name: "Yarn"}
}
puts pets
puts pets[:dog].values()
puts pets[:dog][:name] #Another way of getting specific value
puts pets.dig(:dog, :name) #Another way of getting specific value

me[:hobbies].each do |hobby| 
    puts hobby.capitalize 
end 

me[:hobbies].each do |hobby| 
    print hobby.capitalize 
end 
me[:hobbies].each do |hobby| 
    p hobby.capitalize 
end 

me.each do |details|
    puts details
end

me.each do |details|
    p details
end

me.each do |key, val|
    puts "#{key} => #{val}"
end

puts me[:location]

new_age = {age: 24}

puts me.merge(new_age)

puts me

h = {["foo", "bar"] => "baz"} 

puts h[["foo", "bar"]] 

a = {name: "Cooper"}
b = {"name" => "Chris"}

puts a[:name]
puts b["name"] 

