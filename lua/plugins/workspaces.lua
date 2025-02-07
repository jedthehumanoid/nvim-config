return {
	'natecraddock/workspaces.nvim',
	config = function()
		require("workspaces").setup()
		require("telescope").load_extension("workspaces")
		vim.keymap.set('n', '<C-r>', '<CMD>Telescope workspaces<CR>', { desc = 'Workspaces' })
	end,
}
