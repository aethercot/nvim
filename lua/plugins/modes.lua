return {
	"mvllow/modes.nvim",
	event = "VeryLazy",
	config = function()
		require("modes").setup({
			colors = {
				copy = "#f5c359",
				delete = "#c75c6a",
				insert = "#78ccc5",
				visual = "#ed8cea",
			},
			line_opacity = 0.35,
			ignore_filetypes = { "TelescopePrompt", "alpha" }
		})
	end
}
