vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected blocks and indent
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

-- nav and keep cursor in a good spot
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- paste and move old to void
vim.keymap.set('x', '<leader>p', "\"_dP")

-- yank to system clipboard
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set('n', '<leader>d', "\"_d")
vim.keymap.set('n', '<leader>d', "\"_d")

-- for swapping between projects/folders
-- vim.keymap.set('n', '<C-f>', '<cmd>!tmux neww tmux-sessionizer<CR>')

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- compile
local function custom_compile()
    -- save first
    vim.cmd('w')

    local buffer_path = vim.fn.expand('%')

    if string.find(buffer_path, '.cpp') then
        vim.cmd('!g++ %:p')
    else
        print('No matching compiler found for current file.')
    end
end
vim.keymap.set('n', '<leader>q', custom_compile)
