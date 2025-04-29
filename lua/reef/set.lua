-- disable netrw for neo-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

-- Enable virtual text diagnostics
vim.diagnostic.config({
	virtual_text = true,
})

vim.opt.cursorline = true
-- vim.opt.colorcolumn = '80'

-- set netrw file preview styles
vim.g.netrw_preview = 1
-- vim.g.netrw_liststyle = 3 -- 3 for tree style
vim.g.netrw_winsize = 60

vim.g.mapleader = " "

vim.opt.shell = "/usr/bin/env zsh"

-- performance options
vim.opt.showcmd = false
vim.opt.ruler = false

vim.opt.pumheight = 7 -- set pop up max items | cmp, suggestions

-- set additional file types
vim.filetype.add({
	extension = {
		nf = "nextflow",
	},
	filename = {
		["nextflow.config"] = "nextflow",
	},
})
