vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-tree/nvim-tree.lua')
	use('nvim-lua/plenary.nvim')
	use('ThePrimeagen/harpoon')
	use('folke/tokyonight.nvim')
	use { "folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup {
				window = {
					backdrop = 1
				}
			}
		end
	}
	use('ThePrimeagen/vim-be-good')
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use('nvim-telescope/telescope-project.nvim')
	use('mg979/vim-visual-multi')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' }, -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		}
	}
end)
