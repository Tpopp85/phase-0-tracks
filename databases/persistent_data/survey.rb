require 'sqlite3'
require 'faker'

db = SQLite3::Database.new ("survey_results.db")

create_table_command = <<-SQL
    CREATE TABLE IF NOT EXISTS results(
    id INTEGER  PRIMARY KEY,
    name VARCHAR(255),
    answer_1 VARCHAR(255),
    answer_2 VARCHAR(255),
    answer_3 VARCHAR(255),
    answer_4 VARCHAR(255),
    answer_5 VARCHAR(255),
    answer_6 BOOLEAN,
    answer_7 VARCHAR(255)
    )
SQL

db.execute(create_table_command)
create_question_key_table = <<-Table2
    CREATE TABLE IF NOT EXISTS Question_key_1(
    id INTEGER PRIMARY KEY,
    selection VARCHAR(255),
    description VARCHAR(255)
    )
Table2

db.execute(create_question_key_table)

#db.execute("INSERT INTO Question_key_1 (selection, description) VALUES (?,?)",["A", "Dining at restaurants and experiencing nightlife"])
#db.execute("INSERT INTO Question_key_1 (selection, description) VALUES (?,?)",["B", "Exploring museums and other cultural landmarks",])
#db.execute("INSERT INTO Question_key_1 (selection, description) VALUES (?,?)",["C", "Visiting tourist attractions"])
#db.execute("INSERT INTO Question_key_1 (selection, description) VALUES (?,?)",["D", "Relaxing in coffee shops and dining at home"])
#db.execute("INSERT INTO Question_key_1 (selection, description) VALUES (?,?)",["E", "Exploring the many different neighborhoods where people live"])
#db.execute("INSERT INTO Question_key_1 (selection, description) VALUES (?,?)",["F", "A and C"])
#db.execute("INSERT INTO Question_key_1 (selection, description) VALUES (?,?)",["G", "A, B, and C"])

puts "What is your name"
name = gets.chomp

puts <<-Question_1
What kinds of activities do you look forward to while on vacation in a city?
  A: Dining at restaurants and experiencing nightlife
  B: Exploring museums and other cultural landmarks
  C: Visiting tourist attractions
  D: Relaxing in coffee shops and dining at home
  E: Exploring the many different neighborhoods where people live
  F: A and C
  G: A, B, and C
Question_1
answer_1 = gets.chomp

puts <<-Question_2
In general, how do you feel about spendy entertainment districts?  We're thinking flashy/clubby districts here.
  A: Those are my jam
  B: I generally disdain trendy districts
  C: I like to visit them on occassion, but they're not really my jam
  D: If I'm in the mood to dance, then I'm down.  Otherwise, I'm not interested.
Question_2
answer_2 = gets.chomp

puts <<-Question_3
On a scale of 0 to 10, how many alcoholic beverages are you expecting to consume on vacation per day?
Question_3
answer_3 = gets.chomp

puts <<-Question_4
Which of these best describes the vibe you're going for with your trip?
  A: Girls (the HBO show)
  B: Sex and the city
  C: Anthony Bourdain: No Reservations
  D: Girls Gone Wild
Question_4
answer_4 = gets.chomp

puts <<-Question_5
How important is it for you to feel like you've experienced your destination city "like a local"?  
Please enter a number from 1-10 (10 being "It is very important for me to feel like I've experienced the destination as a local")
Question_5
answer_5 = gets.chomp

puts <<-Question_6
True or False: It is ridiculous to spend $15 on a glass of wine even if it comes with a great view
Question_6
answer_6 = gets.chomp

puts <<-Question_7
A night out usually involves which of the following:
  A: A nice dinner 
  B: Eating something then binge drinking until it is time to go dancing
  C: A nice dinner and maybe some drinks after
  D: Dinner and a movie
  E: Why go out when you can eat so much more cheaply at home?
Question_7
answer_7 = gets.chomp

db.execute("INSERT INTO results (name, answer_1, answer_2, answer_3, answer_4, answer_5, answer_6, answer_7) VALUES 
  (?, ?, ?, ?, ?, ?, ?, ?)", [name, answer_1, answer_2, answer_3, answer_4, answer_5, answer_6, answer_7])

puts "Here are all of the entries in the database"
entry_names = db.prepare "SELECT name FROM results"
rows = entry_names.execute
rows.each do |row|
  puts row.join "\s"
end

puts "Which users results would you like to view"
return_result = gets.chomp
# Eventually this would include tables for each of the survey questions as well as their descriptions so you could efficiently store the data
return_results = <<-SQLquery
SELECT results.name, Question_key_1.description, results.answer_2, results.answer_3, results.answer_4, results.answer_5 FROM results 
INNER JOIN Question_key_1
ON results.answer_1 = Question_key_1.selection
WHERE results.name = "#{return_result}"
SQLquery

second_return = db.prepare "#{return_results}"
rows = second_return.execute
rows.each do |row|
  puts row.join "\s"
end





