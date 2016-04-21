#Initialize the hash
client = {}

# Get client's name 
puts "Please enter the client's name"
client[:name] = gets.chomp

# Get client's age
puts "How old is the client?"
client[:age] = gets.chomp.to_i

# Get number of children the client has
puts "How many children does the client have?"
client[:children] = gets.chomp.to_i

# Get the decor theme requested by the client
puts "What is the client's decor theme?"
client[:decor_theme] = gets.chomp

# Get the client's budget
puts "What is the client's budget?"
client[:budget] = gets.chomp.to_i

# Prints each key-value pair in a nicely formatted way
puts client.each{ |key,value| puts "#{key.capitalize}: #{value}"}

# Asks the user if they would like to update any values and get a response 
puts "Would you like to update any data?"
change = gets.chomp.downcase
    
# If the user says yes, then ask which field they would like to change
if change == "yes"
  #Asks the user if they which field they would like to change
  puts "Which field would you like to change?"
  #.intern will change the string to a symbol
  field = gets.chomp.intern
  puts "What would you like your new value to be?"
  # If the symbol is an integer field, then change the user string input to an integer
    if (field == :age || field == :children || field == :budget)
      client[field] = gets.chomp.to_i
    else
      client[field] = gets.chomp
    end
  else
end

# Prints each key-value pair in a nicely formatted way
puts client.each{ |key,value| puts "#{key.capitalize}: #{value}"}
