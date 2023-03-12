return {
	"EdenEast/nightfox.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function()
		local palette = require('nightfox.palette').load("nightfox")
		require('nightfox').setup({
			options = {
				transparent = true,
			},
			groups = {
				all = {
					TelescopeTitle = { fg = palette.magenta },
					NeoTreeFloatTitle = { fg = palette.magenta },
					BufferLineIndicatorSelected = { fg = palette.cyan },
				},
			},
		})
	end	
  }
