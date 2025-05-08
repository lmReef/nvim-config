vim.opt.shell = "/usr/bin/env zsh"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.cindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 999
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 100

vim.opt.cursorline = true

-- set pop up max items | cmp, suggestions
vim.opt.pumheight = 7

vim.hl.priorities.semantic_tokens = 95 -- treesitter has default 100

-- enable inline error/warns
vim.diagnostic.config({
	virtual_text = true,
})

-- performance options
vim.opt.showcmd = false
vim.opt.ruler = false

-- set additional file types
vim.filetype.add({
	extension = {
		nf = "nextflow",
	},
	filename = {
		["nextflow.config"] = "nextflow",
	},
})

-- disable netrw for neo-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
