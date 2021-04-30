require_relative "./product_no.rb"

class Product
  def initialize(inputs)
    @name = inputs[:name]
    @color = inputs[:color]
    @use = inputs[:use]
    @price = inputs[:price]
    @product_no = 00000000
  end

  include ProductNo

  attr_accessor :name, :color, :use, :price, :product_no

  def print_info
    puts "Product Name: #{name}, Color: #{color}, Uses: #{use}, Price: #{price}"
  end
end