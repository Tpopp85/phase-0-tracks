# Release 0
def some_method
  puts "Status: the block hasn't been run"
  puts "Provide an integer:"
  x = gets.chomp.to_i
  puts "Provide another integer:"
  y = gets.chomp.to_i
  yield(x,y)
  puts "Status: the block has been run"
end

some_method { |x,y| puts x * y}

#Release 1
years = [1932, 1945, 1973]
sports_teams = {Chicago: "Bears", Cleveland: "Browns", Cincinnati: "Bengals"}

p years
years.each { |year| puts "The year was #{year}"}
years.map! { |year| p "#{year.next}"}
p years

p sports_teams
sports_teams.each { |city, team| puts "#{city}'s home team is the #{team}"}
sports_teams.map do |city, team|
  puts city.upcase
  puts team.upcase
  end
p sports_teams

# Release 2
arr = [1,2,3,4,5,6,7,8]
hash = {1=>"one", 2=>"two", 3=>"three", 4=>"four"}

# deletes if a certain criteria is met
## Arrays
# 1. 
arr.delete_if do |num| 
  num < 3
  end
  p arr
# 2.
arr.select!{ |num| num.even?}
p arr
# 3.
puts arr.count { |num| num%2 == 0}

## Hashes
# 1.
hash.delete_if {|digit,word| digit == 3}
p hash
# 2.
p hash.select {|digit, word| digit.odd?}
# 3.
hash.keep_if {|digit, word| digit>2 }
p hash










