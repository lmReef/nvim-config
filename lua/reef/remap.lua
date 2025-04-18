vim.g.mapleader = " "

-- move selected blocks and indent
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- nav and keep cursor in a good spot
vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set('n', '<C-d>', '<C-d>zz')
-- vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste from system clipboard
-- vim.keymap.set('x', '<leader>p', '\"+p')
-- vim.keymap.set('x', '<leader>p', '\"+P')

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>d", '"_d')

-- for swapping between projects/folders
-- vim.keymap.set('n', '<C-f>', "<cmd>!tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<C-_>", [[:/\<<C-r><C-w>\><CR>]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- tmux sessionizer
-- vim.keymap.set('n', '<C-f>', ':!ls $HOME/<CR>')

-- git
vim.keymap.set("n", "<leader>gs", "<cmd>:tab Git<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>:tab Git blame<CR>")
vim.keymap.set("n", "<leader>gd", "<cmd>:Gdiffsplit<CR>")
vim.keymap.set("n", "<leader>ga", ":lua MiniDiff.toggle_overlay()<CR>")
