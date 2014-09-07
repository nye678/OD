--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

--[[---------------------------------------------------------------------------
	@name	Texture Manager
	@text 	Manager responsible for keeping track of texture data.
--]]
local TextureManager = {
	textures = {},
	textureTags = {},
	idSource = 0
}

--[[---------------------------------------------------------------------------
	@name	Load Texture
	@text 	Loads a texture from file into the texture manager. Returns the
			id number of the texture.
--]]
function TextureManager:loadTexture(filepath)
	self.idSource = self.idSource + 1
	local id = self.idSource
	local texture = love.graphics.newImage(filepath)

	self.textures[id] =  texture
	return id
end

--[[---------------------------------------------------------------------------
	@name	Set Texture Tag Name
	@text 	Set a tag name for a texture. The texture id can be looked up by
			the tag name.
--]]
function TextureManager:setTag(texture, tagName)
	self.textureTags[tagName] = texture
end

--[[---------------------------------------------------------------------------
	@name	Get Tagged Texture
	@text 	Gets a texture id with the given tag.
--]]
function TextureManager:getTagged(tagName)
	return self.textureTags[tagName]
end

-------------------------------------------------------------------------------
return TextureManager