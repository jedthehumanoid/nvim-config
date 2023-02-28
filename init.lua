require('plugins')

vim.g.mapleader = ' '
vim.opt.wrap = false
vim.opt.number = true

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.cmd [[colorscheme tokyonight-night]]

-- Save
vim.keymap.set('n', '<C-s>', ":w<CR>", {})
vim.keymap.set('i', '<C-s>', "<ESC>:w<CR>a", {})

-- Cut, copy, paste
vim.keymap.set('n', '<C-v>', '"+p', {})
vim.keymap.set('v', '<C-c>', '"+y', {})
vim.keymap.set('v', '<C-x>', '"+d', {})

-- Command mode
vim.keymap.set('n', '<M-p>', ":", {})
vim.keymap.set('i', '<M-p>', "<ESC>:", {})

-- Quit
vim.keymap.set('n', '<C-q>', ":q<CR>", {})
vim.keymap.set('n', '<C-w>', ":bp<bar>bd#<CR>", {})
vim.keymap.set('i', '<C-q>', "<ESC>:q<CR>", {})

-- Undo/Redo
vim.keymap.set('n', '<C-z>', "u", {})
vim.keymap.set('i', '<C-z>', "<ESC>ui", {})
vim.keymap.set('n', '<M-z>', vim.cmd('normal! redo'), {})
vim.keymap.set('i', '<M-z>', "<ESC><C-r>i", {})

-- Find
vim.keymap.set('n', '<C-f>', "/", {})

-- JKL; in insert mode
vim.keymap.set('i', '<C-h>', '<left>', {})
vim.keymap.set('i', '<C-j>', '<down>', {})
vim.keymap.set('i', '<C-k>', '<up>', {})
vim.keymap.set('i', '<C-l>', '<right>', {})
