# Exercises: Ruby review

## 1. Variables, Arrays, and Loops

# 1. Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the `p` keyword.
puts "Hello user! Please enter your five favorite foods:"
fav_foods = []
5.times do
  fav_foods << gets.chomp.downcase
end
p fav_foods

# 2. Now, instead of printing out the array, output 5 separate lines of each food, with the prefix, “I love”. For example:
#    I love cobb salad
#    I love spaghetti
fav_foods.each { |food| puts "I love #{food}" }

# 3. Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example:
#    1.  cobb salad
#    2.  spaghetti
count = 1
fav_foods.each do |food|
  puts "#{count}.  #{food}"
  count +=1
end

## 2. Operators and Conditionals

# 1.  Create and define a variable `count = 0`. Using a loop and the `+=` operator, output the following:

count = 0
11.times do
  p count
  count += 1
end

# 2.  Translate the following into ruby code. Run the program to make sure it works:
#     - Sam enjoys cooking. Make an array with recipe names to represent the different recipes Sam can cook.
recipes = ["cookies", "ratatouille", "roasted veggies", "pain au chocolat", "crepes", "tarte tatin", "pomme puree", "deviled eggs", "beef wellington", "souffle", "brownies"]

#     - Sally speaks many languages. Make an array with language names to represent the languages Sally can speak.
languages = ["Japanese", "Spanish", "Portugese", "Italian", "Arabic", "Hebrew", "French", "Mandarin"]

#     - If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. Based on the above arrays, print out a message describing whether or not they should date.
if recipes.length > 10 && languages.length > 5
  puts "Sam and Sally should date!"
else
  puts "You two just aren't compatible"
end

#     - If Sam can make crepes or Sally can speak French, they should marry. Based on the above arrays, print out a message describing whether or not they should marry.
if recipes.include?("crepes") && languages.include?("French")
  puts "Sam and Sally should get married!!"
else
  puts "It's just not going to work out..."
end

## 3. Hashes

# 1. Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.
puts "Hello user, please enter the contact info of 5 people:"
@bank_customers = []
5.times do
  customer_info = {}
  puts "First name:"
  customer_info[:first_name] = gets.chomp
  puts "Last name:"
  customer_info[:last_name] = gets.chomp
  customer_info[:email] = ("#{customer_info[:first_name]}#{customer_info[:last_name]}@gmail.com").downcase
  customer_info[:acct_no] = Array.new(10) { [*"0".."9"].sample }.join
  @bank_customers << customer_info
end
p @bank_customers

# 2. Each person should automatically be given an account number which is a randomized ten digit number.
# **SEE ABOVE

# 3. After the user is finished, the program should print out all the users. For example:

@bank_customers.each do |customer|
  puts "FIRST NAME: #{customer[:first_name]}"
  puts "LAST NAME: #{customer[:last_name]}"
  puts "EMAIL: #{customer[:email]}"
  puts "ACCT #: #{customer[:acct_no]}"
end

def acct_lookup
  puts "Please enter an account number to look up contact info:"
  acct_numbers = []
  @bank_customers.each { |customer| acct_numbers << customer[:acct_no]}
  acct_lookup = gets.chomp
  if acct_numbers.include?(acct_lookup) == true
    i = 0
    while i < @bank_customers.length
      if @bank_customers[i][:acct_no] == acct_lookup
        puts "FIRST NAME: #{@bank_customers[i][:first_name]}"
        puts "LAST NAME: #{@bank_customers[i][:last_name]}"
        puts "EMAIL: #{@bank_customers[i][:email]}"
      end
      i += 1
    end
  else
    puts "That is not a valid account number"
  end
end

acct_lookup

## 4. Final Review

# 1. Create a program that puts your class into groups! Have the program request the user to enter each student’s name. Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:

# 2. Refactor the program to take an odd or even number of students. If odd, one group should have three students.

students_original = ["Ted", "Roy", "Keely", "Rebecca", "Jamie", "Sam", "Nate", "Meredith", "Pam", "Jim", "Dwight", "Jan", "Kelly", "Ryan", "Holly", "Leslie", "Ron", "Donna", "Anne", "Tom", "Andy", "April", "Mona-Lisa", "Jean-Ralphio", "Perd"]

students = students_original.shuffle

group_count = students.length / 2
group_size = 2

group_count.times do
  if students.length / group_size >= 2
    puts "Group:"
    group_size.times do
      puts students.shift
    end
  else
    puts "Group:"
    students.length.times do
      puts students.shift
    end
  end
end

## Bonus

# 1. Continue with Exercise 3:
#    Expand the program so a user gets all the account info by entering an account number i.e. prompt the user to enter an account number, and output the first_name, last_name, etc.
# SEE CODE ABOVE
# 2. Reject a user entering an account if the email address doesn’t have an “@” and doesn’t end in “.com” Prompt the user to try again if this happens.
# SKIPPED

# ## Object oriented programming practice

# Use the code below to answer the following questions.

# ```ruby
# class Card
# end

# class Deck
# end

# trivia_data = {
#   "What is the capital of Illinois?" => "Springfield",
#   "Is Africa a country or a continent?" => "Continent",
#   "Tug of war was once an Olympic event. True or false?" => "True"
# }

# deck = Deck.new(trivia_data) # deck is an instance of the Deck class

# while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
# end
# ```

# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances. (Do not change any of the existing code for this step!)

# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.

# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.

# 4. CHALLENGE: Change the program to keep track of the number right/wrong and give a score at the end.

# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.

# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!