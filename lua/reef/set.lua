vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 100

vim.opt.cursorline = true
vim.opt.colorcolumn = '80'

vim.g.mapleader = " "

-- vim.opt.shell = 'mintty.exe'
-- vim.opt.shellcmdflag = '-e'
-- vim.opt.shellquote = ''
-- vim.opt.shellxquote = ''
vim.opt.shell = 'cmd.exe'
vim.opt.shellcmdflag = '/c'
vim.opt.shellquote = '"'
vim.opt.shellxquote = ''

-- performance options
vim.opt.showcmd = false
vim.opt.ruler = false
