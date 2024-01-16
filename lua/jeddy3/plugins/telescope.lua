return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
		vim.keymap.set('n', '<leader>b', builtin.buffers, {})
		vim.keymap.set('n', '<leader>sg', builtin.live_grep, {
			desc = '[S]earch by [G]rep'
		})
		vim.keymap.set('n', '<C-p>', builtin.find_files, {})
		vim.keymap.set('i', '<C-p>', builtin.find_files, {})
	end,
}
