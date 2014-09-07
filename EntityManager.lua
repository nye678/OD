--[[---------------------------------------------------------------------------
	Jake Robbins

--]]---------------------------------------------------------------------------

--[[---------------------------------------------------------------------------
	@name	Entity Manager
	@text 	The Entity Manager singleton class creates new entity ids and
			manages a table of tag names.
--]]	
local EntityManager = {
	entityTags = {},
	idSource = 0
}

--[[---------------------------------------------------------------------------
	@name	Create New Entity
	@text 	Returns the id of a newly created entity.
--]]
function EntityManager:createEntity()
	self.idSource = self.idSource + 1
	return self.idSource
end

--[[---------------------------------------------------------------------------
	@name	Set Entity Tag Name
	@text 	Sets a tag name for the entity. Entity ids can be looked up by 
			their tag names.
--]]
function EntityManager:setTag(entity, tagName)
	self.entityTags[tagName] = entity
end

--[[---------------------------------------------------------------------------
	@name	Get Tagged Entity
	@text 	Gets an entity id which was previously tagged.
--]]
function EntityManager:getTagged(tagName)
	return self.entityTags[tagName]
end

-------------------------------------------------------------------------------
return EntityManager