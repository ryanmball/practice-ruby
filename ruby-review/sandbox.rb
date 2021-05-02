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