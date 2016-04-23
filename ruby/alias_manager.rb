def encode_string(letter)
  vowels = "aeiou" 
  if vowels.include?(letter)
    vowels[vowels.index(letter)+1]
  elsif letter == " "
    letter
  elsif vowels.include? (letter.downcase.next)
    letter.next.next
  else
    letter.next
  end
end 




puts "What is your name?"

name = gets.chomp
code_name = name.split(" ")
code_name.reverse!
p code_name
code_name = code_name.join(" ")
code_name = code_name.split('')


code_name.map! { |letter| ((vowels).include?(letter) ? vowels[vowels.index(letter)+1] : 
  (letter == " " ? letter : (vowels.include?(letter.downcase.next) ? 
  (letter.next).next : letter.next))) }

code_name = code_name.join("")

puts name
puts code_name