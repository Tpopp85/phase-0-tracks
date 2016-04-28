class Santa

  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Intializing Santa instance"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Dancer", "Prancer","Rudolph", "Blitzen", "Dasher", "Vixen", "Comet", "Cupid", "Donner"]
    @age = rand(0..140)
  end
  
  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(bad_reindeer)
    @reindeer_ranking.delete(bad_reindeer) 
    @reindeer_ranking << bad_reindeer
  end

end



gender_array = ["male", "female", "n/a", "transgender", "gender fluid"]
ethnicity_array = ["Japanese", "Chinese", "'Merican", "Mexican", "Indian", "Sri Lankan", "Cambodian", "Dutch", "Icelandic", "Black"]
x = Random.new
santa_array = []

500.times do
santa = Santa.new(gender_array.sample, ethnicity_array.sample)
santa_array << santa
end

santa_array.each{|santa| puts "Santa is a(n) #{santa.ethnicity} #{santa.gender} person who is #{santa.age} years old."}
santa_array[3].celebrate_birthday
puts santa_array[3].age
santa_array[3].gender = "Santa is transgender"
puts santa_array[3].gender
santa_array[3].get_mad_at("Prancer")
puts santa_array[3].reindeer_ranking