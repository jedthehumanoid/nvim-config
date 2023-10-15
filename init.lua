vim.g.mapleader = ' '

CloseBuffer = function()
	if vim.fn.bufnr('#') == vim.fn.bufnr() then
		print("same")
	end
	pcall(vim.cmd, "bnext")
	pcall(vim.cmd, "bdelete#")
end

vim.api.nvim_create_user_command('SayHello', CloseBuffer,{})
vim.opt.wrap = false
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"

vim.cmd [[colorscheme tokyonight-night]]
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

-- Save
vim.keymap.set('n', '<C-s>', ":w<CR>", {})
vim.keymap.set('i', '<C-s>', "<ESC>:w<CR>a", {})

-- Cut, copy, paste
vim.keymap.set('n', '<C-v>', '"+p', {})
vim.keymap.set('i', '<C-v>', '<ESC>"+pa', {})
vim.keymap.set('v', '<C-c>', '"+y', {})
vim.keymap.set('v', '<C-x>', '"+d', {})

-- Command mode
vim.keymap.set('n', '<M-p>', ":", {})
vim.keymap.set('i', '<M-p>', "<ESC>:", {})

-- Quit
vim.keymap.set('n', '<C-w>', ":bn<CR>:bw#<CR>", {})
vim.keymap.set('n', '<leader>w', ":bn<CR>:bw#<CR>", {})
vim.keymap.set('n', '<Tab>', ":bn<CR>", {})
vim.keymap.set('n', '<S-Tab>', ":bp<CR>", {})

-- Undo/Redo
vim.keymap.set('n', '<C-z>', "u", {})
vim.keymap.set('i', '<C-z>', "<ESC>ui", {})
vim.keymap.set('n', '<M-z>', ':redo<CR>', {})
vim.keymap.set('i', '<M-z>', "<ESC>:redo<CR>i", {})

-- Find
vim.keymap.set('n', '<C-f>', "/", {})

-- JKL; in insert mode
vim.keymap.set('i', '<C-h>', '<left>', {})
vim.keymap.set('i', '<C-j>', '<down>', {})
vim.keymap.set('i', '<C-k>', '<up>', {})
vim.keymap.set('i', '<C-l>', '<right>', {})
