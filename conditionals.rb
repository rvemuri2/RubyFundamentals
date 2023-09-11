EMAIL = "rohitvemuri@yahoo.com" 

PASSWORD = "123abc"

PASSWORD_VAULT = {}

puts "This is a password manager"

puts "Please sign in to continue"

print "Enter email: "

user_email = gets.chomp  #the input version of python in ruby

if user_email == EMAIL
    print "Enter Password: "
    user_password = gets.chomp

else
    puts "Invalid email"
    exit
end

unless user_password != PASSWORD
    puts "Hello, #{user_email}."
    puts "What would you like to do?"
    puts "1. Add a service"
    puts "2. Get existing service"
    puts "3. exit"
    user_selection = gets.chomp
else
    puts "Invalid password"
    exit
end

case user_selection
when "1"
    print "Enter name of service: "
    user_service = gets.chomp 
    

when "2"
    puts "Retrieving existing service"
else
    puts "Exiting program"
    exit
end




# user_email = gets
# print(user_email) 