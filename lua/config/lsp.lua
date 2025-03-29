vim.opt.signcolumn = 'yes'

vim.lsp.config['pylsp'] = {
    cmd = {'pylsp' },
    filetypes = {'python'},
    root_markers = {'pyproject.toml'},
    settings = {
        pylsp = {
            plugins = {
                ruff = {
                    enabled = true,
		},
	    }
	}
    }
}
vim.keymap.set({'v','i','n'}, '<F3>', vim.lsp.buf.format, bufopts)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client:supports_method('textDocument/formatting') then
      -- Format the current buffer on save
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({bufnr = args.buf, id = client.id})
        end,
      })
    end
  end,
})

vim.lsp.enable('pylsp')
vim.lsp.enable('clangd')
vim.lsp.enable('zls')
