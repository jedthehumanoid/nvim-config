return {
<<<<<<< HEAD
	'stevearc/oil.nvim',
	lazy = false,
	config = function()
		require("oil").setup()
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end
} 
=======
        'stevearc/oil.nvim',
	lazy = false,
	config = function()
		require("oil").setup({
			float = {
				max_height = 0.8,
				max_width = 0.8,
				-- padding = 10,
			},
		})
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end
}
>>>>>>> 12e1a4c (Changes)
