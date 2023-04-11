return {
	"nvim-treesitter/nvim-treesitter",
	-- event = { "BufNewFile", "BufReadPre", "BufAdd" },
	opts = {
		ensure_installed = { "c", "c_sharp", "cpp", "lua", "vim", "help", "query" },
	},
	cmd = "TSEnable",
	args = "highlight",
	build = ":TSUpdate"
}
