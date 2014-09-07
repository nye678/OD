--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

local TextureManager = require "TextureManager"

--[[---------------------------------------------------------------------------
	@name	Animation Manager
	@text 	The manage which keeps track of all animation data for a given
			texture. 
--]]
local AnimationManager = {
	sheetData = {},
	frames = {},
	animations = {},
	idSource = 0
}

--[[---------------------------------------------------------------------------
	@name	Load Animation Data
	@text 	Loads animation data from a file. Requires a texture id to
			reference the animation data to the correct texture.
--]]
function AnimationManager:loadAnimation(textureId, filepath)
	self.idSource = self.idSource + 1
	local id = self.idSource
	local data = love.filesystem.load(filepath)()

	self.sheetData[id] = {
		rows = data.rows,
		cols = data.columns,
		frameWidth = data.frameWidth,
		frameHeight = data.frameHeight,
		entity = entity,
		textureId = textureId
	}

	self.frames[id] = self:generateFrames(textureId, self.sheetData[id])
	self.animations[id] = data.anims

	return id
end

--[[---------------------------------------------------------------------------
	@name	Generate Animation Frames
	@text 	Grenerates the quads which specifies each frame in an animation.
--]]
function AnimationManager:generateFrames(textureId, sheetData)
	local frames = {}
	local texture = TextureManager.textures[textureId]
	local width, height = texture:getWidth(), texture:getHeight()
	local rows, cols = sheetData.rows, sheetData.cols
	local frameWidth, frameHeight = sheetData.frameWidth, sheetData.frameHeight

	for row = 1, rows, 1 do
		for col = 1, cols, 1 do
			local index = (row - 1) * cols + col
			local x = (col - 1) * frameWidth
			local y = (row - 1) * frameHeight
			local quad = love.graphics.newQuad(x, y, frameWidth, frameHeight, width, height)
			frames[index] = quad
		end
	end

	return frames
end

--[[---------------------------------------------------------------------------
	@name	Gets Animation
	@text 	Gets an animation strip by name.
--]]
function AnimationManager:getAnimation(animationId, name)
	return self.animations[animationId][name]
end

-------------------------------------------------------------------------------
return AnimationManager