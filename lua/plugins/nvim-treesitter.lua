return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufNewFile", "BufReadPre", "BufAdd" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "c_sharp", "cpp", "lua", "vim", "help", "query" },

			highlight = {
				enable = true,
			},
		})
	end,
	build = ":TSUpdate"
}
