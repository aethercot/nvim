return {
	"folke/noice.nvim",
	dependencies = { "MunifTanjim/nui.nvim", lazy = true },
	event = "VeryLazy",
	opts = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
		},
	},
	-- stylua: ignore
	keys = function()
		local noice = require("noice")
		return {
			{ "<S-Enter>", function() noice.redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
			{ "<leader>snl", function() noice.cmd("last") end, desc = "Noice Last Message" },
			{ "<leader>snh", function() noice.cmd("history") end, desc = "Noice History" },
			{ "<leader>sna", function() noice.cmd("all") end, desc = "Noice All" },
			{ "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
			{ "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
		}
	end,
}