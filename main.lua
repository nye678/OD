--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

local EntityManager = require "EntityManager"
local TextureManager = require "TextureManager"
local AnimationManager = require "AnimationManager"
local TransformSystem = require "TransformSystem"
local TextureSystem = require "TextureSystem"
local AnimationSystem = require "AnimationSystem"
local RenderOps = require "RenderOperations"
local Vectors = require "Vectors"

--[[---------------------------------------------------------------------------
	@name	Load
	@text 	Loads initial game data.
--]]
function love.load()
	local textureId = TextureManager:loadTexture('assets/textures/chara.png')
	local animId = AnimationManager:loadAnimation(textureId, 'assets/sprites/chara.lua')

	for i=1,100000 do
		local entity = EntityManager:createEntity()
		TransformSystem:createComponent(entity, Vectors:createVec2(math.random(800), math.random(600)))
		AnimationSystem:createComponent(entity, animId)
	end
end

commandBuffer = nil

function love.update(deltaTime)
	AnimationSystem:updateAnimations(deltaTime)
	commandBuffer = RenderOps.queueSpriteCommands(AnimationSystem, TransformSystem, AnimationManager, TextureManager)
end

function love.draw()
	RenderOps.render(commandBuffer)
end