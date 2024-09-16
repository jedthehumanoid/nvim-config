return {
	"folke/which-key.nvim",
	tag = "v2.1.0",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>f"] = {
				name = "+file",
			},
		})
		wk.register({
			["<leader>s"] = {
				name = "+search",
			},
		})
	end,
}
