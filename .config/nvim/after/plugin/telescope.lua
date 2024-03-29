local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	-- make sure ripgrep is installed
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
