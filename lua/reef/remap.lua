vim.g.mapleader = " "

-- move selected blocks and indent
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")

-- nav and keep cursor in a good spot
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y')

-- delete no hist
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete no history" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete no history" })

vim.keymap.set("n", "<C-k>", ":cnext<cr>zz")
vim.keymap.set("n", "<C-j>", ":cprev<cr>zz")
vim.keymap.set("n", "<leader>k", ":lnext<cr>zz", { desc = "Jump to next location" })
vim.keymap.set("n", "<leader>j", ":lprev<cr>zz", { desc = "Jump to prev location" })

vim.keymap.set("n", "<C-_>", [[:/\<<C-r><C-w>\><cr>]])
vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Custom replace word" }
)
vim.keymap.set("n", "<leader>x", ":silent !chmod +x %<cr>", { desc = "chmod +x" })

vim.keymap.set("n", "<leader>ww", ":w<cr>", { desc = ":w" })
vim.keymap.set("n", "<leader>wq", ":wq<cr>", { desc = ":wq" })
vim.keymap.set("n", "<leader>q", ":q!<cr>", { desc = ":q!" })

-- git
vim.keymap.set("n", "<leader>gs", ":tab Git<cr>))", { desc = "Git status" })
vim.keymap.set("n", "<leader>gb", ":tab Git blame<cr>", { desc = "Git blame" })
vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<cr>", { desc = "Git diff side-by-side" })
vim.keymap.set("n", "<leader>ga", ":lua MiniDiff.toggle_overlay()<cr>", { desc = "Git diff inline" })
vim.keymap.set("n", "<leader>gc", ":Git commit<cr>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", ":Git push<cr>", { desc = "Git push" })
vim.keymap.set("n", "<leader>go", ":Git pull<cr>", { desc = "Git pull" })
vim.keymap.set("n", "<leader>fa", ":Git add %<cr>", { desc = "Git add" })

-- open links
-- vim.keymap.set("n", "<cr>", function()
-- 	local word = vim.fn.expand("<cWORD>")
-- 	if string.find(word, "http") then
-- 		vim.cmd("silent !" .. os.getenv("BROWSER") .. " " .. word)
-- 	end
-- end)
