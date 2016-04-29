# Class - Unicorn
# Attributes - name, age, horn length
# Methods - Fly, Prance, Grow Horn

class Unicorn

  attr_accessor :horn_length, :destination, :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @horn_length = 1
    @destination = "nowhere"
  end

  def fly(destination)
    puts "Unicorn #{@name} is flying to #{destination} and it is magical!"
    @destination = destination
  end

  def prance
    puts "Unicorn #{@name} is prancing"
  end

  def grow_horn(n)
    @horn_length = @horn_length * n
  end

end


unicorn_array = []

puts "Would you like to create any unicorns today? (yes/no)"
create_unicorns = gets.chomp

while create_unicorns == "yes"
  puts "What is the name of your unicorn?"
  name = gets.chomp

  puts "How old is this unicorn?"
  age = gets.chomp.to_i

  unicorn = Unicorn.new(name,age)

  puts "Do you want this unicorn to fly anywhere? (yes/no)"
  fly = gets.chomp
  fly == "yes" ? fly = true : fly = false
 
  if fly
    puts "Where do you want your unicorn to fly?"
    destination = gets.chomp
    unicorn.fly(destination)
  end

  puts "Has your unicorn been extra magical lately?"
  extra_magical = gets.chomp
  extra_magical == "yes" ? extra_magical = true : extra_magical = false
  if extra_magical
    puts "Like, how magical? On a scale of 1 to 10"
    magicalness_factor = gets.chomp.to_i
    if magicalness_factor > 5
      magicalness_factor = magicalness_factor * 2
    else
      magicalness_factor
    end
      unicorn.grow_horn(magicalness_factor)
  end

unicorn_array << {name: unicorn.name, age: unicorn.age, destination: unicorn.destination, horn_length: unicorn.horn_length}

puts "Do you want to create another unicorn or what?  Their species is depending on you, so no pressure..."
create_unicorns = gets.chomp

end

unicorn_array.each {|unicorn| puts "#{unicorn[:name]} is #{unicorn[:age]} years old and flying to #{unicorn[:destination]}.  He/She has a horn that is #{unicorn[:horn_length]} meters long."}

