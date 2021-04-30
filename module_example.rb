module Transportation
  def initialize(*)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  def initialize(options_hash)
    super
    @make = options_hash[:make] || "Toyota"
    @model = options_hash[:model] || "4Runner"
    @year = options_hash[:year] || 2020
    @color = options_hash[:color] || "black"
  end

  include Transportation

  attr_accessor :make, :model, :year, :color, :speed, :direction

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  def initialize(options_hash)
    super
    @brand = options_hash[:brand] || "Specialized"
    @type = options_hash[:type] || "mountain"
  end

  include Transportation

  attr_accessor :brand, :type, :speed, :direction

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new({})
bike1 = Bike.new({})
p car1
p bike1
car1.accelerate
bike1.accelerate
p car1
p bike1
car1.honk_horn
bike1.ring_bell

car2 = Car.new(make: "Volkswagen", model: "Tiguan", year: 2017, color: "black")
p car2
p car2.make
bike2 = Bike.new(brand: "Santa Cruz", type: "mountain")
p bike2
p bike2.type

car3 = Car.new(make: "Mercedes", model: "Sprinter", year: 2021, color: "black")
car3.accelerate
car3.honk_horn
p car3
