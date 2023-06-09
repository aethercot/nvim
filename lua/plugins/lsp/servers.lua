return {
	clangd = {},
	omnisharp = { cmd = { "omnisharp" } },
	lua_ls = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				checkThirdParty = false,
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false
			}
		}
	}
}
