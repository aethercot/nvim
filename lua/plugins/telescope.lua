return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		tag = "0.1.1",
		cmd = "Telescope",
		dependencies = "nvim-lua/plenary.nvim",
		opts = {
			defaults = {
				sorting_strategy = "ascending",
				layout_config = {
					prompt_position = "top"
				}
			}
		}
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = function()
			return vim.fn.executable "make" == 1
		end
	}
}
