def encode_string(letter)
  vowels = "aeiou" 
  if letter == "u"
    "a"
  elsif letter == "z"
    "b"
  elsif vowels.include?(letter)
    vowels[vowels.index(letter)+1]
  elsif letter == " "
    letter
  elsif vowels.include? (letter.downcase.next)
    letter.next.next
  else
    letter.next
  end
end 

code_name_array = []

puts "What is your name? (Type \"quit\" to escape)" 
name = gets.chomp
while name != "quit"
  code_name = name.split(" ").reverse!.join(" ").split('')
  code_name.map! {|letter| encode_string(letter)}
  code_name = code_name.join("")
  code_name_array << {name: name, code_name: code_name}
  name = gets.chomp
end  

code_name_array.each{|pair| puts "#{pair[:name]} is actually #{pair[:code_name]}"}

