return {
	entities = {
		path = "entities/",
		files = {
			Player = "player.lua"
		}
	},

	fonts = {
		path = "fonts/",
		default = "MonoSpatial",
		files = {
			MonoSpatial = { filename = "MonoSpatial.ttf", size = 16, dpi = 72 }
		}
	},

	scenes = {
		path = "scenes/",
		initial = "scene0",
		files = {
			scene0 = "scene0.lua",
			scene1 = "scene1.lua"
		}
	},

	sounds = {
		path = "sounds/",
		default = nil,
		files = {}
	},

	sprites = {
		path = "sprites/",
		defualt = nil,
		files = {
			chara = "chara.lua"
		}
	},

	textures = {
		path = "textures/",
		default = "checker",
		files = {
			chara = "chara.png",
			checker = "checkered.png",
			hex = "hex.png",
			mininicular = "mininicular64.png"
		}
	},

	tileSets =
	{
		path = "tileSets/",
		default = nil,
		files = {
			mininicular = "mininicular.lua"
		}
	}
}