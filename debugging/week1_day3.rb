# Original
# put "Hello!
# 	greeting = gets.chomp()
# if answer["Arrr!"]
# 	  puts "Go away, pirate."
# 	Elsif
# 	  puts "Greetings, hater of pirates!"

# Debugged
puts "Hello!"
greeting = gets.chomp()
if greeting == "Arrr!"
  puts "Go away, pirate."
elsif
	puts "Greetings, hater of pirates!"
end


# Original
# dickens = ["Charles Dickens," "1870"]
# thackeray = {"William Thackeray", "1863"}
# trollope = {'Anthony Trollope', '1882'}
# hopkins = ["Gerard Manley Hopkins" => "1889"]
# def died(array)
#   name = array[2]
#   year = array[1]
#   puts  "#name died in {year}."
# puts died(Dickens)
# puts died(thackeray)
# put died(trollop)
# puts died(hopkins)
# end

# Debugged
dickens = ["Charles Dickens", 1870]
thackeray = ["William Thackeray", 1863]
trollope = ["Anthony Trollope", 1882]
hopkins = ["Gerard Manley Hopkins", 1889]
def died(array)
  name = array[0]
  year = array[1]
  puts "#{name} died in #{year}."
end

died(dickens)
died(thackeray)
died(trollope)
died(hopkins)

# Original
# puts "Greetings! What is your year of origin?'
# origin == gets.chomp
# if origin < 1900
#   puts 'That's the past!'
# elseif origin > 1900 && origin < 2020
#   puts "That's the present!"
# elsif
#   puts "That's the future!"

# Debugged
puts "Greetings! What is your year of origin?"
origin = gets.chomp.to_i
if origin < 1900
  puts "That's the past!"
elsif origin >= 1900 && origin <= 2020
  puts "That's the present!"
else
  puts "That's the future!"
end

# Original
# classy Person
#   def initial(fname lname)
#     @first_name = firstname
#     @last_name == lname
#   def to_s
#     @last_name +," " + @first_name
# end
# tj = Person.new("Thomas", "Jefferson")
# puts person.fname
# put tj

# Debugged
class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    first_name + " " + last_name
  end

end
tj = Person.new("Thomas", "Jefferson")
puts tj.first_name
puts tj

