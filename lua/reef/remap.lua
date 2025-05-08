vim.g.mapleader = " "

-- move selected blocks and indent
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")

-- nav and keep cursor in a good spot
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- delete no hist
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>d", '"_d')

vim.keymap.set("n", "<C-k>", ":cnext<cr>zz")
vim.keymap.set("n", "<C-j>", ":cprev<cr>zz")
vim.keymap.set("n", "<leader>k", ":lnext<cr>zz")
vim.keymap.set("n", "<leader>j", ":lprev<cr>zz")

vim.keymap.set("n", "<C-_>", [[:/\<<C-r><C-w>\><cr>]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", ":silent !chmod +x %<cr>")

vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>wq", ":wq<cr>")
vim.keymap.set("n", "<leader>q", ":q!<cr>")

-- git
vim.keymap.set("n", "<leader>gs", ":tab Git<cr>))")
vim.keymap.set("n", "<leader>gb", ":tab Git blame<cr>")
vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<cr>")
vim.keymap.set("n", "<leader>ga", ":lua MiniDiff.toggle_overlay()<cr>")
vim.keymap.set("n", "<leader>gc", ":Git commit<cr>")
vim.keymap.set("n", "<leader>fa", ":Git add %<cr>")

-- open links
vim.keymap.set("n", "<cr>", function()
	local word = vim.fn.expand("<cWORD>")
	if string.find(word, "http") then
		vim.cmd("silent !" .. os.getenv("BROWSER") .. " " .. word)
	end
end)
