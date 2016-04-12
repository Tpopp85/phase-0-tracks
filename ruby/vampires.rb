puts "How many employees will be processed?"
num_employees = gets.chomp.to_i

i = 1
current_year = 2016
allergies = nil


  while i <= num_employees

    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp.to_i
    puts "In what year were you born?"
    birth_year = gets.chomp.to_i
    age_calc = current_year - birth_year
    age_calc.to_i  
    puts "Our company cafeteria serves garlic bread.  Should we order some for you? (yes/no)"
    garlic = gets.chomp.downcase
    puts "Would you like to enroll in our company's health insurance? (yes/no)"
    health = gets.chomp.downcase
    puts "Please list any allergies and type done when finished"
      while allergies != "done"
      allergies = gets.chomp
        if allergies == "sunshine" 
          puts "You are a vampire!"
          allergic_to_sunlight = true
          break
        end 
      end 
    

    if allergic_to_sunlight != true
      case 
        when age_calc == age && (garlic === "yes" || health === "yes")
          if name == "Drake Cula" || name == "Tu Fang"
            puts "Definitely a vampire"
          else
            puts "Probably not a vampire"
          end
        when age_calc != age && !(garlic == "no" && health == "no")
          puts "Probably a vampire"
        when age_calc != age && garlic == "no" && health == "no"
          puts "Almost certainly a vampire"
        else
          puts "Results inconclusive"
        end
    end

    i += 1
    allergies = nil
    allergic_to_sunlight = false
  end


  puts "Actually, never mind!  What do these questions have to do with anything?  Let's all be friends."