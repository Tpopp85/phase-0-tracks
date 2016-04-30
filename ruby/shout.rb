module Shout
=begin
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :) :) :)"
  end
=end
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :) :) :)"
  end

end

class Max_the_cat
  include Shout
end

class Baby
  include Shout
end

# puts Shout.yell_angrily("Fishsticks")
# puts Shout.yell_happily("Fishsticks")

maxi_cat = Max_the_cat.new
puts maxi_cat.yell_angrily("Meowwwww")
puts maxi_cat.yell_happily("Meowwwww")

baby = Baby.new
puts baby.yell_angrily("Wahhh...I'm a baby")
puts baby.yell_happily("Wahhh...I'm a baby")