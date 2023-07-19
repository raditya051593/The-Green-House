local TheGreenHouse = {
	
	-- constants
	SEED_KEY = "spring",
	FLOWER_COLORS = {
		"red",
		"blue",
		"yellow",
		"white",
		"purple"
	},
	
	-- variables
	numFlowers = 0,
	
	-- store data about different flowers
	flowerData = {},
	
	-- set up the greenhouse
	init = function(self)
		for i, color in ipairs(self.FLOWER_COLORS) do
			self.flowerData[color] = {}
		end
	end,
	
	-- plant a flower into the greenhouse
	plant = function(self, color, description)
		self.flowerData[color][self.numFlowers] = description
		self.numFlowers = self.numFlowers + 1
	end,
	
	-- water a given flower
	waterFlower = function(self, color, index, amount)
		if self.flowerData[color][index] then
			self.flowerData[color][index].hydration = self.flowerData[color][index].hydration + amount
		end
	end,
	
	-- water all flowers
	waterAll = function(self, amount)
		for color, flowerArr in pairs(self.flowerData) do
			for index, flower in pairs(flowerArr) do
				flower.hydration = flower.hydration + amount
			end
		end
	end,
	
	-- remove a flower from the greenhouse
	removeFlower = function(self, color, index)
		if self.flowerData[color][index] then
			table.remove(self.flowerData[color], index)
			self.numFlowers = self.numFlowers - 1
		end
	end,
	
	-- check if a flower is ready for harvest
	harvestFlower = function(self, color, index)
		if self.flowerData[color][index] then
			if self.flowerData[color][index].hydration >= 100 then
				return true
			end
		end
		
		return false
	end,
	
	-- set the seed key
	setSeedKey = function(self, key)
		self.SEED_KEY = key
	end,
	
	-- get the seed key
	getSeedKey = function(self)
		return self.SEED_KEY
	end,
	
	-- get the number of flowers
	getNumFlowers = function(self)
		return self.numFlowers
	end,
	
	-- get all flower data
	getFlowerData = function(self)
		local flowerDataCopy = {}
		
		for color, flowerArr in pairs(self.flowerData) do
			flowerDataCopy[color] = {}
			for index, flower in pairs(flowerArr) do
				flowerDataCopy[color][index] = flower
			end
		end
		
		return flowerDataCopy
	end
}

return TheGreenHouse