--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

local RENDER_SPRITE_COMMAND = 1
local RENDER_TEXTURE_COMMAND = 2

--[[---------------------------------------------------------------------------
	@name	Render Sprite Command
	@text 	Command for rendering a single sprite frame. Requires a table with
			the texture, frame, and the x and y position of the sprite.
--]]
local function renderSpriteCommand(data)
	love.graphics.draw(data.texture, data.frame, data.x, data.y)
end

--[[---------------------------------------------------------------------------
	@name	Render Texture Command
	@text 	Command for rendering a static texture. Requires a table with the
			texture and the x, y position of the entity.
--]]
local function renderTextureCommand(data)
	love.graphics.draw(data.texture, data.x, data.y)
end

--[[---------------------------------------------------------------------------
	@name	Render Commands
	@text 	Table of rendering commands.
--]]
local RenderCommands = {
	[RENDER_SPRITE_COMMAND] = renderSpriteCommand,
	[RENDER_TEXTURE_COMMAND] = renderTextureCommand,
}

--[[---------------------------------------------------------------------------
	@name	Render Operations
	@text 	Collection of operations which perform rendering tasks.
--]]
local RenderOperations = {}

--[[---------------------------------------------------------------------------
	@name	Queue Texture Commands
	@text 	Creates a command buffer for rendering all the entities with static
			with static textures.
--]]
function RenderOperations.queueTextureCommands(texSys, transformSys, texMan)
	local commandBuffer = {}

	for i, texData in ipairs(texSys.texData) do
		local entity = texData.entity
		local pos = transformSys.positions[entity]

		local data = {
			texture = texMan.textures[texData.textureId],
			x = pos.x,
			y = pos.y
		}

		commandBuffer[i] = { data = data, command = RENDER_TEXTURE_COMMAND }
	end

	return commandBuffer
end

--[[---------------------------------------------------------------------------
	@name	Queue Sprites Commands
	@text 	Creates a command buffer for rendering all the sprites in the 
			scene.
--]]
function RenderOperations.queueSpriteCommands(animSys, transformSys, animMan, texMan)
	local commandBuffer = {}

	for i, animData in ipairs(animSys.animationData) do
		local entity = animData.entity
		local pos = transformSys.positions[entity]

		local animId = animData.animationId
		local textureId = animMan.sheetData[animId].textureId
		local frame = animMan.frames[animId][animData.currentFrame]

		local data = {
			texture = texMan.textures[textureId],
			frame = frame,
			x = pos.x,
			y = pos.y
		}

		commandBuffer[i] = { data = data, command = RENDER_SPRITE_COMMAND }
	end

	return commandBuffer
end


--[[---------------------------------------------------------------------------
	@name	Render
	@text 	Operations which renders from a command buffer. The command buffer
			should be presorted in the correct draw order. The buffer is built
			of key, value pairs of a data table and a method which accepts the
			table.
--]]
function RenderOperations.render(commandBuffer)
	for i, c in ipairs(commandBuffer) do
		RenderCommands[c.command](c.data)
	end
end

-------------------------------------------------------------------------------
return RenderOperations