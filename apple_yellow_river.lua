local greenHouse = {} 

-- Constructor 
function greenHouse:new(windows, doors, garden) 

  -- Create the new instance 
  local house = {
    windows = windows, 
    doors = doors, 
    garden = garden,
  } 

  -- "Inherit" the methods from the GreenHouse object 
  setmetatable(house, {__index = greenHouse})

  -- Return the instance 
  return house
end 

-- Initialize 
function greenHouse:init() 
  self.windows = 0
  self.doors = 0
  self.garden = 0
end 

-- Create Gardens 
function greenHouse:createGarden()
  local garden = {
    plants = {},
    trees = {},
    flowers = {}
  }
  self.garden = garden
end 

-- Add Windows 
function greenHouse:addWindows(num) 
  self.windows = self.windows + num
end 

-- Add Doors 
function greenHouse:addDoors(num) 
  self.doors = self.doors + num
end 

-- Plant 
function greenHouse:plant(item) 
  table.insert(self.garden.plants, item)
end 

-- Add Trees 
function greenHouse:addTrees(num) 
  for i=1, num do 
    table.insert(self.garden.trees, "Tree")
  end 
end 

-- Add Flowers 
function greenHouse:addFlowers(num) 
  for i=1, num do 
    table.insert(self.garden.flowers, "Flower")
  end 
end 

-- Water Plants 
function greenHouse:waterPlants() 
  for i, plant in ipairs(self.garden.plants) do
    plant.water() -- assuming this is a method of the plant object 
  end
end 

return greenHouse