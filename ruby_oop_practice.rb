# class Car
#   def initialize (color)
#     # puts "a brand new car!"
#     @color = color
#   end
#   # setter method: allows you to SET the color
#   def color=(color)
#     @color = color
#   end
#   # getter method: allows you to GET the color
#   def color
#     @color
#   end
# end
#
# car_one = Car.new "green"
# # car_one.color = "green"
# puts car_one.color
#
# car_two = Car.new "blue"
# # car_two.color = "blue"
# puts car_two.color
#
# car_three = Car.new "black"
# puts car_three.color

# class Car
#   attr_reader :make  # getter
#   attr_writer :make  # setter
#
#   def initialize(color, make)
#     @color = color
#     @make = make
#   end
#
#   def color=(color)
#     @color = color
#   end
#
#   def color
#     @color
#   end
# end

# class Car
#   attr_accessor :make, :color  # getters and setters!
#
#   def initialize(color, make)
#     @color = color
#     @make = make
#   end
# end
#
# bmw = Car.new('bmw', 'green')
# puts bmw.color, bmw.make

class Car
  attr_accessor :make, :model, :color, :speed
  @@count = 0

  def initialize(color, make, model)
    @speed = 0
    @color = color
    @make = make
    @model = model
    @@count = @@count + 1
  end

  def self.count
    @@count
  end

  def accelerate(change)
    @speed += change
  end
end

class Pickup < Car
  attr_accessor :make, :model, :color, :bed_capacity, :speed

  def initialize(color, make, model, bed_capacity)
    @speed = 0
    @color = color
    @make = make
    @bed_capacity = bed_capacity
    @@count = @@count + 1
  end

  def ride_in_back
    puts "Bumpy but breezy!"
  end
end

truck_one = Pickup.new("red", "chevy", "silverado", 0)
# puts truck_one.speed
truck_one.accelerate 40
# puts truck_one.speed

class Car
  include Comparable
  attr_accessor :speed

  def initialize
    @speed = 0
  end

  def accelerate(change)
    @speed += change
  end

  def <=>(otherCar)
    @speed <=> otherCar.speed
  end
end

car_a = Car.new
# => #<Car:0x007fea4a871928 @speed=0>
car_b = Car.new
# => #<Car:0x007fea4a869700 @speed=0>
puts car_a == car_b
# => true
car_a.accelerate(20)
# => 20
puts car_a > car_b
# => true
puts car_a.speed
puts car_b.speed

# 1. difference between instance and class
  #  class - general thing that should have general
  #     things defined that all instances would share.
  #  instance - the creation of a thing from a class,
  #     inherits stuff from class.
  #  analogy: lip stick: class = same properties (size, shape)
  #           but instance would have different color
# 2. benefits of OOP
  #  it's kind of DRY. don't have to repeat writing
  #     behaviors or properties for each instance
# 3. my own questions:
  # when to know to "get", "set" and self define
  # pros and cons of explicitly getting/setting vs.
  #    attr_reader, writer, accessor
