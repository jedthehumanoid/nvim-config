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
