return 
{
	name = "chara",
	spriteSheet = "chara",
	rows = 6,
	columns = 20,
	frameWidth = 64,
	frameHeight = 64,
	anims = 
	{
		idle = {
			numFrames = 9,
			frames = { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
			looping = true,
		},
		walking = {
			numFrames = 10,
			frames = { 21, 22, 23, 24, 25, 26, 27, 28, 29, 30 },
			looping = true,
		},
		jumping = {
			numFrames = 4,
			frames = { 89, 90, 91, 92 },
			looping = false
		},
		falling = {
			numFrames = 1,
			frames = { 97 },
			looping = false
		},
		running = {
			numFrames = 16,
			frames = { 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 },
			looping = true
		},
		breaking = {
			numFrames = 6,
			frames = { 33, 34, 35, 36, 37, 38 },
			looping = false
		}
	}
}
