local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', function()
	vim.cmd(':Easypick Changed Files')
end, {})

vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
