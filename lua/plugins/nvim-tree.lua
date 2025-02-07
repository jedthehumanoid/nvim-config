return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			respect_buf_cwd = true,
			renderer = {
				-- Below to make it not use nerdfont graphics on everything
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
		vim.keymap.set({ 'n', 'i' }, '<C-b>', "<cmd>NvimTreeToggle<CR>", {})
	end,
}
