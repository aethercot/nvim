return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		highlight = { enable = true },
		ensure_installed = { "c", "c_sharp", "cpp", "lua", "vim", "help", "query" },
	},
	cmd = "TSEnable",
	build = ":TSUpdate"
}
