return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local dashboard = require("alpha.themes.dashboard")
		local logo = [[
 █████╗ ██████╗ ██████╗ ██╗ █████╗  █████╗ ████████╗
██╔══██╗██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗╚══██╔══╝
███████║██████╔╝██████╔╝██║██║  ╚═╝██║  ██║   ██║
██╔══██║██╔═══╝ ██╔══██╗██║██║  ██╗██║  ██║   ██║
██║  ██║██║     ██║  ██║██║╚█████╔╝╚█████╔╝   ██║
╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝ ╚════╝  ╚════╝    ╚═╝
		]]

		dashboard.section.header.val = vim.split(logo, "\n")

		dashboard.section.buttons.val = {
			dashboard.button("f", " " .. " Find File", ":Telescope find_files <CR>"),
			dashboard.button("F", " " .. " Find Hidden Files", ":Telescope find_files follow=true no_ignore=true hidden=true<CR>"),
			dashboard.button("n", " " .. " New File", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", " " .. " Recent Files", ":Telescope oldfiles <CR>"),
			dashboard.button("g", " " .. " Find Text (Grep)", ":Telescope live_grep <CR>"),
			dashboard.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
			dashboard.button("m", " " .. " Mason", ":Mason<CR>"),
			dashboard.button("q", " " .. " Quit", ":qa<CR>"),
		}

		require("alpha").setup(dashboard.opts)
	end,
	priority = 950,
}
