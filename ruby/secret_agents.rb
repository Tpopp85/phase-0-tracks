# Take user's answer and push each character forward by one letter. Make sure the program finds the index
# for each individual character.

def encrypt(name)
  index = 0
  while index < name.length
      if name[index] == "z"
        name[index] = "a"
      else
        name[index] = name[index].next
      end
      index += 1
  end
  name
end

# Take user's answer and push each character back by one letter. Make sure there's an additional 
# alphabet string so that the previous letter for each index in the answer can be recalled.

def decrypt(name2)
  index = 0
  str = "abcdefghijklmnopqrstuvwxyz"
  while index < name2.length
      name2[index] = str[str.index(name2[index])-1]
      index += 1
  end
  name2
end

# Driver Code

# greet and ask the agent if they'd like to encrypt or decrypt a password

puts "Welcome! Would you like to encrypt or decrypt a password?"
answer = gets.chomp

# ask for the password

puts "What is your password?"
password = gets.chomp

# return their result

if answer == "encrypt"
  puts encrypt(password)
else
  puts decrypt(password)
end 
