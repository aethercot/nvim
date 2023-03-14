return {
	"echasnovski/mini.indentscope",
	version = "*",
	priority = 800,
	event = { "BufReadPre", "BufNewFile", "BufAdd" },
	config = function()
		require("mini.indentscope").setup({
			symbol = "┊",
			options = { try_as_border = true }
		})
	end
}
