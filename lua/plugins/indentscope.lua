return {
	"echasnovski/mini.indentscope",
	priority = 800,
	event = { "BufReadPre", "BufNewFile", "BufAdd" },
	opts = {
		symbol = "┊",
		options = { try_as_border = true }
	}
}
