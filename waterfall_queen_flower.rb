#Filename: GreenHouse.rb

#Define class GreenHouse
class GreenHouse
  attr_accessor :name, :height, :length, :width

  def initialize(name, height, length, width)
    #Store the parameters passed in
    @name = name
    @height = height
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def volume
    @length * @width * @height
  end

  #Method for printing details
  def print_details
    puts "Greenhouse #{@name} is #{@height} ft tall,
    #{@length} ft long and #{@width} ft wide.
    It has an area of #{area} sq.ft and a volume of #{volume} cu.ft."
  end

end

#Create an instance of GreenHouse
gh = GreenHouse.new('New_Green_House', 10, 20, 30)

#Call the print_details() method
gh.print_details

#Create an array of GreenHouse instances
green_houses = []

green_houses << GreenHouse.new('Green_House_1', 10, 20, 30)
green_houses << GreenHouse.new('Green_House_2', 12, 25, 35)
green_houses << GreenHouse.new('Green_House_3', 14, 30, 40)

#Iterate over each instances and call the method print_details
green_houses.each do |greenhouse|
  greenhouse.print_details
end