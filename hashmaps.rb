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