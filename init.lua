vim.g.mapleader = ' '
require("jeddy3.lazy")

vim.opt.wrap = false
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"

-- Save
vim.keymap.set({ 'n', 'i' }, '<C-s>', "<cmd>w<CR>", {})

-- Cut, copy, paste
vim.keymap.set('n', '<C-v>', 'Pl', {})
vim.keymap.set('v', '<C-c>', 'y', {})
vim.keymap.set('v', '<C-x>', 'd', {})

-- Redo on U
vim.keymap.set('n', 'U', "<C-r>", {})

vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('n', '<C-h>', '<C-w>h', {})

vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', {})
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', {})
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', {})
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', {})
