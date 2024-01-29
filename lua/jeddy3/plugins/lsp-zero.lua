return {
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
			{ 'neovim/nvim-lspconfig' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/nvim-cmp' },
			{ 'L3MON4D3/LuaSnip' },
		},
		branch = 'v3.x',
		config = function()
			local lsp_zero = require('lsp-zero')

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr, preserve_mappings = false })
				lsp_zero.buffer_autoformat()
			end)
			local lspconfig = require('lspconfig')
			lspconfig.clangd.setup({})
			local lua_opts = lsp_zero.nvim_lua_ls()
			lspconfig.lua_ls.setup(lua_opts)
			lspconfig.rust_analyzer.setup({})
			vim.diagnostic.config({ virtual_text = false })
		end,
	},

}
