return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 30,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  properties = {},
  tilesets = {
    {
      name = "mininicular",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../textures/mininicular.png",
      imagewidth = 128,
      imageheight = 128,
      properties = {},
      tiles = {}
    },
    {
      name = "entityMarkers",
      firstgid = 65,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../textures/entityMarkers.png",
      imagewidth = 64,
      imageheight = 64,
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 30,
      height = 10,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        59, 60, 57, 58, 63, 64, 60, 58, 60, 57, 57, 58, 62, 60, 57, 58, 59, 61, 59, 60, 57, 57, 57, 58, 62, 59, 64, 59, 60, 57,
        59, 60, 57, 58, 59, 62, 60, 58, 60, 57, 57, 58, 63, 60, 57, 58, 59, 64, 59, 60, 57, 57, 57, 58, 64, 59, 63, 59, 60, 57,
        59, 60, 57, 58, 59, 63, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 62, 59, 60, 57, 57, 57, 58, 64, 59, 59, 59, 60, 57,
        59, 60, 57, 58, 59, 59, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 63, 62, 60, 57, 57, 57, 58, 63, 59, 59, 59, 60, 57,
        61, 60, 57, 58, 61, 61, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 59, 64, 60, 57, 57, 57, 58, 59, 59, 59, 59, 60, 57,
        64, 60, 57, 58, 59, 59, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 59, 59, 60, 57, 57, 57, 58, 59, 59, 59, 59, 60, 57,
        62, 60, 57, 58, 59, 59, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 59, 63, 60, 57, 57, 57, 58, 59, 61, 59, 59, 60, 57,
        59, 60, 57, 58, 59, 59, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 59, 59, 60, 57, 57, 57, 58, 59, 62, 59, 59, 60, 57,
        59, 60, 57, 58, 59, 59, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 59, 59, 60, 57, 57, 57, 58, 59, 62, 59, 61, 60, 57,
        59, 60, 57, 58, 59, 59, 60, 58, 60, 57, 57, 58, 59, 60, 57, 58, 59, 59, 59, 60, 57, 57, 57, 58, 59, 62, 59, 59, 60, 57
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 2",
      x = 0,
      y = 0,
      width = 30,
      height = 10,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 13, 5, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 5, 5, 14, 0,
        0, 0, 0, 0, 0, 0, 32, 45, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 7, 7, 5, 5, 24, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 37, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 5, 5, 5, 24, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 15, 5, 5, 16, 0, 0, 0, 0, 21, 5, 22, 0, 0, 0, 0, 0, 0, 0, 23, 5, 16, 38, 0, 0,
        0, 0, 48, 55, 56, 15, 5, 5, 5, 5, 16, 0, 0, 15, 5, 5, 5, 16, 0, 48, 0, 0, 0, 0, 0, 23, 5, 16, 0, 0,
        0, 0, 13, 5, 5, 5, 5, 5, 5, 5, 0, 0, 15, 5, 30, 54, 53, 37, 7, 8, 22, 0, 0, 0, 0, 0, 5, 38, 0, 0,
        0, 0, 21, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 5, 54, 0, 0, 54, 0, 45, 46, 0, 0, 0, 0, 0, 37, 38, 0, 0,
        0, 0, 29, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 5, 16, 55, 56, 0, 0, 30, 0, 0, 0, 0, 21, 5, 38, 0, 0,
        0, 0, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 5, 5, 5, 5, 0, 0, 0, 0, 0, 21, 5, 5, 5, 14, 0,
        0, 0, 45, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 38, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 3",
      x = 0,
      y = 0,
      width = 30,
      height = 10,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 17, 1, 10, 0, 9, 1, 1, 3, 3, 3, 4, 10, 0, 0, 0, 0, 17,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 4, 1, 3, 1, 34, 27, 0, 0, 49, 50, 49, 19, 1, 42, 27, 0, 11, 3, 3, 1,
        0, 0, 0, 0, 9, 3, 10, 0, 0, 28, 27, 50, 49, 19, 42, 44, 0, 0, 0, 0, 0, 0, 33, 34, 0, 9, 1, 20, 49, 50,
        0, 0, 0, 0, 28, 49, 27, 0, 0, 9, 1, 4, 12, 0, 19, 10, 0, 0, 0, 0, 0, 0, 25, 34, 0, 28, 50, 0, 51, 52,
        0, 0, 0, 0, 17, 1, 1, 10, 0, 28, 1, 1, 1, 12, 0, 0, 0, 0, 0, 43, 0, 0, 19, 1, 12, 0, 0, 0, 19, 1,
        3, 4, 3, 4, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 12, 52, 0, 51, 17, 1, 12, 51, 35, 28, 41, 10, 0, 0, 0, 41,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 18, 0, 43, 51, 51, 52, 44, 33,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1
      }
    },
    {
      type = "objectgroup",
      name = "Object Layer 1",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 112,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = 0, y = 2 },
            { x = 67, y = 2 },
            { x = 67, y = -9 },
            { x = 71, y = -14 },
            { x = 126, y = -14 },
            { x = 125, y = 1 },
            { x = 162, y = 1 },
            { x = 162, y = -12 },
            { x = 146, y = -30 },
            { x = 193, y = -30 },
            { x = 240, y = 17 },
            { x = 290, y = 17 },
            { x = 290, y = 2 },
            { x = 320, y = 2 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 66,
          y = 66,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 46, y = 0 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 177,
          y = 63,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = -31, y = -13 },
            { x = 33, y = -13 },
            { x = 33, y = -25 },
            { x = 39, y = -29 },
            { x = 77, y = -29 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 274,
          y = 34,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 125, y = 0 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 49,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = -3, y = 0 },
            { x = -3, y = 33 },
            { x = 16, y = 33 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 383,
          y = 50,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 45 },
            { x = 17, y = 63 },
            { x = 31, y = 64 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 328,
          y = 113,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = -8, y = 2 },
            { x = 8, y = 16 },
            { x = 30, y = 16 },
            { x = 38, y = 22 },
            { x = 38, y = 32 },
            { x = 138, y = 33 },
            { x = 138, y = 0 },
            { x = 122, y = -16 },
            { x = 150, y = -15 },
            { x = 150, y = -47 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 400,
          y = 68,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 5, y = -3 },
            { x = 16, y = -3 },
            { x = 31, y = -19 },
            { x = 65, y = -19 },
            { x = 65, y = -30 },
            { x = 71, y = -35 },
            { x = 78, y = -35 },
            { x = 79, y = -68 }
          },
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "polyline",
          x = 1,
          y = 1,
          width = 0,
          height = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 114 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "entities",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "player",
          type = "Player",
          shape = "rectangle",
          x = 16,
          y = 112,
          width = 0,
          height = 0,
          gid = 65,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "Enemy",
          shape = "rectangle",
          x = 176,
          y = 48,
          width = 0,
          height = 0,
          gid = 65,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "Enemy",
          shape = "rectangle",
          x = 257,
          y = 128,
          width = 0,
          height = 0,
          gid = 65,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "Enemy",
          shape = "rectangle",
          x = 432,
          y = 144,
          width = 0,
          height = 0,
          gid = 65,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "Enemy",
          shape = "rectangle",
          x = 336,
          y = 32,
          width = 0,
          height = 0,
          gid = 65,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
