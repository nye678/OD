--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

local AnimationManager = require "AnimationManager"

local DEFAULT_ANIMATION = 'idle'
local DEFAULT_FPS = 15

--[[---------------------------------------------------------------------------
	@name	AnimationSystem
	@text 	System for keeping track of animation data. Animation data contains
			only the information about the active state of the animation on an
			entity level. Frames and animation strips are on a per texture 
			level and are held in the Animation Manager.
--]]
local AnimationSystem = {
	animationData = {},

	entities = {},
	idSource = 0
}

--[[---------------------------------------------------------------------------
	@name	Create New Animation Component
	@text 	Creates a new animation component. The animation component only
			contains the data specific to the current state of the animation
			for a given entity.

			The animation stack is a stack of animation strips, which contains
			a span of frame indicies.
--]]
function AnimationSystem:createComponent(entity, animationId)
	self.idSource = self.idSource + 1
	local id = self.idSource
	local data = {
		animationStack = { DEFAULT_ANIMATION },
		currentFrame = 1,
		fps = DEFAULT_FPS,
		timer = 0,
		entity = entity,
		animationId = animationId
	}

	self.entities[entity] = id
	self.animationData[id] = data

	return id
end

--[[---------------------------------------------------------------------------
	@name	Get Current Animation
	@text 	Gets the current animation strip for an animation component.
--]]
local function getCurrentAnimation(animData)
	local name = animData.animationStack[1]
	return AnimationManager:getAnimation(animData.animationId, name)
end

--[[---------------------------------------------------------------------------
	@name	Animation Completed
	@text 	Returns true if the animation has completed for the current
			animation strip.
--]]
local function animationCompleted(currentFrame, animation)
	local lastFrame = animation.numFrames + animation.frames[1] - 1
	return currentFrame >= lastFrame
end

--[[---------------------------------------------------------------------------
	@name	Pop Animation Stack
	@text 	When then animation has completed it is popped off the component's
			animation stack. If the stack is empty then the default animation
			is set.
--]]
local function popAnimationStack(animData)
	table.remove(animData.animationStack, 1)
	if #animData.animationStack == 0 then
		table.insert(animData.animationStack, DEFAULT_ANIMATION)
	end
end

--[[---------------------------------------------------------------------------
	@name	Update Animation
	@text 	Updates a single animation component.
--]]
local function updateAnimation(animData, currentAnimation)
	if animationCompleted(animData.currentFrame, currentAnimation) then
		if currentAnimation.looping then
			animData.currentFrame = currentAnimation.frames[1]
		else
			popAnimationStack(animData)
			newCurrentAnimation = getCurrentAnimation(animData)
			abimData.currentFrame = newCurrentAnimation.frames[1]
		end
	else
		animData.currentFrame = animData.currentFrame + 1
	end

	animData.timer = 0
end

--[[---------------------------------------------------------------------------
	@name	Update Animations
	@text 	Updates all the animation components.
--]]
function AnimationSystem:updateAnimations(deltaTime)
	for i, animData in ipairs(self.animationData) do
		animData.timer = animData.timer + deltaTime

		if animData.timer  > 1 / animData.fps then
			local currentAnimation = getCurrentAnimation(animData)
			updateAnimation(animData, currentAnimation)
		end
	end
end

-------------------------------------------------------------------------------
return AnimationSystem