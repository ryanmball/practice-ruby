require_relative "./store_item.rb"

puts "Welcome to Ryan's climbing and outdoor store!"
# product1 = {name: "BD Camalot 0.75", color: "green", use: "trad", price: 69.95}
# product2 = {name: "Mammut Infinity Dry 9.5mm", color: "pink", use: "all", price: 280.00}
# product3 = {:name => "BD Hotforged Hybrid QD", :color => "blue", :use => "sport", :price => 17.95}

product1 = Product.new(name: "BD Camalot 0.75", color: "green", use: "trad", price: 69.95)
product2 = Product.new(name: "Mammut Infinity Dry 9.5mm", color: "pink", use: "all", price: 280.00)
product3 = Product.new(name: "BD Hotforged Hybrid QD", color: "blue", use: "sport", price: 17.95)

product1.print_info
product2.print_info
product3.print_info
product1.price = 59.95
product1.print_info

product1.generate_product_no
product2.generate_product_no
product3.generate_product_no

p product1
p product2
p product3
