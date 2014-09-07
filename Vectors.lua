--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

--[[---------------------------------------------------------------------------
	@name	Vectors
	@text 	Module for creating vectors.
--]]
local Vectors = {
	createVec2,
}

--[[---------------------------------------------------------------------------
	@name	Add Vector 2
	@text 	Add meta method for vector 2. If the rhs parameter is a number then
			add the scalar to both vector components.
--]]
local function addVec2(lhs, rhs)
	if (type(rhs) == 'number') then
		return Vectors:createVec2(lhs.x + rhs, lhs.y + rhs)
	else	
		return Vectors:createVec2(lhs.x + rhs.x, lhs.y + rhs.y)
	end
end

--[[---------------------------------------------------------------------------
	@name	Subtract Vector 2
	@text 	Subtraction meta method for vector 2. If rhs is a number, then
			subtract both vector components from the value.
--]]
local function subVec2(lhs, rhs)
	if (type(rhs) == 'number') then
		return Vectors:createVec2(lhs.x - rhs, lhs.y - rhs)
	else	
		return Vectors:createVec2(lhs.x - rhs.x, lhs.y - rhs.y)
	end
end

--[[---------------------------------------------------------------------------
	@name	Multiply Vector 2
	@text 	Multiplication meta method for vector 2. If rhs is a number, then
			multiply both vector components by the value.
--]]
local function mulVec2(lhs, rhs)
	if (type(rhs) == 'number') then
		return Vectors:createVec2(lhs.x * rhs, lhs.y * rhs)
	else	
		return Vectors:createVec2(lhs.x * rhs.x, lhs.y * rhs.y)
	end
end

--[[---------------------------------------------------------------------------
	@name	Divide Vector 2
	@text 	Division meta method for vector 2. If rhs is a number, then
			divide both vector components by the value.
--]]
local function divVec2(lhs, rhs)
	if (type(rhs) == 'number') then
		return Vectors:createVec2(lhs.x / rhs, lhs.y / rhs)
	else	
		return Vectors:createVec2(lhs.x / rhs.x, lhs.y / rhs.y)
	end
end

--[[---------------------------------------------------------------------------
	@name	Equals Vector 2
	@text 	Equality meta method for vector 2.
--]]
function eqVec2(lhs, rhs)
	return lhs.x == rhs.x and lhs.y == rhs.y
end

--[[---------------------------------------------------------------------------
	@name	Dot Vector 2
	@text 	Computes the dot product of a 2 dimensional vector.
--]]
function dotVec2(self, other)
	return self.x * other.x + self.y * other.y
end

--[[---------------------------------------------------------------------------
	@name	Determinate Vector 2
	@text 	Computes the determinate of 2 vector 2s.
--]]
function detVec2(self, other)
	return self.x * other.y - self.y * other.x
end

--[[---------------------------------------------------------------------------
	@name	Length Vector 2
	@text 	Computes the length of a 2 dimensional vector.
--]]
function lenVec2(self)
	return math.sqrt(self.x ^ 2 + self.y ^ 2)
end

--[[---------------------------------------------------------------------------
	@name	Normalize Vector 2
	@text 	Normalizes a 2 dimensional vector.
--]]
function normalizeVec2(self)
	local len = self.length()
	self.x = self.x / len
	self.y = self.y / len
end

--[[---------------------------------------------------------------------------
	@name	Create Vector 2
	@text 	Creates a new 2 dimensional vector. 
--]]
function Vectors:createVec2(xValue, yValue)
	return { 
		x = xValue or 0, y = yValue or 0, 

		__add = addVec2,
		__sub = subVec2,
		__mul = mulVec2,
		__div = divVec2,
		__eq = eqVec2,

		dot = dotVec2,
		det = detVec2,
		length = lenVec2,
		normalize = normalizeVec2
	}
end

-------------------------------------------------------------------------------
return Vectors