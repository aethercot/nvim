return {
	"nvim-treesitter/nvim-treesitter",
	-- event = { "BufNewFile", "BufReadPre", "BufAdd" },
	opts = {
		ensure_installed = { "c", "c_sharp", "cpp", "lua", "vim", "help", "query" },

		highlight = {
			enable = true,
		},
	},
	build = ":TSUpdate"
}
