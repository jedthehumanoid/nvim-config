require("nvim-tree").setup({
	respect_buf_cwd = true,
	renderer = {
		icons = {
			show = {
				file = false,
				folder = false,
				folder_arrow = false,
				git = false,
				modified = false,
			},
			glyphs = {
				symlink = "",
			}
		}
	}
})

vim.keymap.set('n', '<C-b>', ":NvimTreeToggle<CR>", {})
vim.keymap.set('i', '<C-b>', "<ESC>:NvimTreeToggle<CR>", {})
