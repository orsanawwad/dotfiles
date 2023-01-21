local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'rust_analyzer',
	'gopls'
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
