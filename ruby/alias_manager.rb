puts "What is your name?"
name = gets.chomp
code_name = name.split(" ")
code_name.reverse!
p code_name
code_name = code_name.join(" ")
code_name = code_name.split('')
vowels = "aeiou" 

puts vowels.index("a")

code_name.map! { |letter| ((vowels).include?(letter) ? vowels[vowels.index(letter)+1] : (letter == " " ? letter : (vowels.include?(letter.downcase.next) ? (letter.next).next : letter.next))) }
code_name = code_name.join("")

puts code_name