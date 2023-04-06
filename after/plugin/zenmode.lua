require("zen-mode").setup {
	window = {
		backdrop = 1
	}
}
vim.keymap.set('n', '<leader>z', ":ZenMode<CR>", {})
