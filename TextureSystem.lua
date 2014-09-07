--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

--[[---------------------------------------------------------------------------
	@name	Texture System
	@text 	System for keeping track of renderable static textures. Each
			texture data will contain the id of a texture and the entity it is
			associated with. 
--]]
local TextureSystem = {
	texData = {},
	
	entities = {},
	idSource = 0
}

--[[---------------------------------------------------------------------------
	@name	Create Texture Component
	@text 	Creates a new texture component.
--]]
function TextureSystem:createComponent(entity, textureId)
	self.idSource = self.idSource + 1
	local id = self.idSource
	local data = {
		textureId = textureId,
		entity = entity
	}

	self.texData[id] = data
	self.entities[entity] = id

	return id
end

-------------------------------------------------------------------------------
return TextureSystem;