return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
		vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Git files' })
		vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Buffers' })
		vim.keymap.set('n', '<leader>sg', builtin.live_grep, {
			desc = 'Grep'
		})
		vim.keymap.set({ 'n', 'i' }, '<C-p>', builtin.find_files, {})
	end,
}
