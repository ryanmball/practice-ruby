puts "Welcome to Ryan's climbing and outdoor store!"
# product1 = {name: "BD Camalot 0.75", color: "green", use: "trad", price: 69.95}
# product2 = {name: "Mammut Infinity Dry 9.5mm", color: "pink", use: "all", price: 280.00}
# product3 = {:name => "BD Hotforged Hybrid QD", :color => "blue", :use => "sport", :price => 17.95}

class Product

  def initialize(name, color, use, price)
    @name = name
    @color = color
    @use = use
    @price = price
  end

  attr_accessor :name, :color, :use, :price

  def print_info
    puts "Product Name: #{name}, Color: #{color}, Uses: #{use}, Price: #{price}"
  end

end

product1 = Product.new("BD Camalot 0.75", "green", "trad", 69.95)
product2 = Product.new("Mammut Infinity Dry 9.5mm", "pink", "all", 280.00)
product3 = Product.new("BD Hotforged Hybrid QD", "blue", "sport", 17.95)

product1.print_info
product2.print_info
product3.print_info
product1.price = 59.95
product1.print_info