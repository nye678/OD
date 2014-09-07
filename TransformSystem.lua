--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

local Vectors = require "Vectors"

--[[---------------------------------------------------------------------------
	@name	Transform System
	@text 	System responsible for keeping track of entity transforms. All data
			is stored in large arrays, each index corresponding to a single
			component. The components table maps entity ids to component ids.
--]]
local TransformSystem = {
	positions = {},
	orientations = {},
	scales = {},

	entities = {},
	idSource = 0
}

--[[---------------------------------------------------------------------------
	@name	Create New Transform Component
	@text 	Creates a new transform component. The new components id is
			returned. If nil is passed for any of the transformation parameters
			then they set to a default value.
--]]
function TransformSystem:createComponent(entity, position, orientation, scale)
	self.idSource = self.idSource + 1
	local id = self.idSource
	local pos = position or Vectors:createVec2()
	local ori = orientation or 0
	local sca = scale or Vectors:createVec2(1, 1)

	self.entities[entity] = id
	self.positions[id] = pos
	self.orientations[id] = ori
	self.scales[id] = sca

	return id
end

-------------------------------------------------------------------------------
return TransformSystem