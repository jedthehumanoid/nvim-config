--local workspaces = require('telescope').extensions.workspaces
require("telescope").load_extension("workspaces")
require("workspaces").setup()
vim.keymap.set('n', '<leader>fw', ':Telescope workspaces<CR>', {})
vim.keymap.set('n', '<C-r>', ':Telescope workspaces<CR>', {})
