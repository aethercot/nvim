vim.g.mapleader = " "
vim.g.maplocalleader = " "

local bind = vim.keymap.set

bind("n", "<leader>w", "<CMD>w<CR>", { desc = "[W]rite File" })
bind("n", "<leader>q", "<CMD>q<CR>", { desc = "[Q]uit" })

-- Telescope

bind("n", "<leader>fb", "<CMD>Telescope current_buffer_fuzzy_find<CR>", { desc = "Search Current Buffer" })
bind("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Find Files" })
bind("n", "<leader>fF", "<CMD>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "Find All Files" })
bind("n", "<leader>fl", "<CMD>Telescope live_grep<CR>", { desc = "Live Grep Files" })
bind("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>", { desc = "Find Recent Files" })
bind("n", "<leader>ft", "<CMD>Telescope<CR>", { desc = "All Telescope Options" })
