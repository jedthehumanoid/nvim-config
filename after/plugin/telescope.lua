local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('i', '<C-p>', builtin.find_files, {})
