-- Space as leader key
vim.g.mapleader = ' '

require("config.lazy")
require("config.lsp")

-- Do not wrap lines
vim.opt.wrap = false

-- Row numbers
vim.opt.number = true

-- Share clipboard with system
vim.opt.clipboard = "unnamedplus"

-- smart case-insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Save on Ctrl-S
vim.keymap.set({ 'n', 'i' }, '<C-s>', "<cmd>w<CR>", {})

-- Redo on U
vim.keymap.set('n', 'U', "<C-r>", {})

-- Ctrl-hjkl for switching windows (also in terminal)
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('n', '<C-h>', '<C-w>h', {})

vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', {})
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', {})
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', {})
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', {})

-- Buffer wipe on leader-w
vim.keymap.set('n', '<leader>w', '<cmd>bw<CR>', {})

-- Cmd mode without shift
vim.keymap.set('n', ';', ':', {})
