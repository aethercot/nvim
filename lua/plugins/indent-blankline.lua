return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile", "BufAdd" },
	opts = {
		char = "┊",
		show_trailing_blankline_indent = true
	}
}
