-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'BurntSushi/ripgrep'
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'BurntSushi/ripgrep' },
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        }
    }

    -- themes

    use {
        'rose-pine/neovim',
        as = 'rose-pine',
    }
    use {
        'maxmx03/dracula.nvim',
        as = 'dracula'
    }
    use {
        'catppuccin/nvim',
        as = 'catppuccin'
    }
    use {
        'tomasr/molokai',
        as = 'molokai'
    }
    use {
        'rebelot/kanagawa.nvim',
        as = 'kanagawa'
    }
    use {
        'edeneast/nightfox.nvim',
        as = 'nightfox'
    }
    use {
        'tiagovla/tokyodark.nvim',
        as = 'tokyodark'
    }
    use {
        'folke/tokyonight.nvim',
        as = 'tokyonight'
    }
    use {
        'morhetz/gruvbox',
        as = 'gruvbox'
    }
    use {
        'navarasu/onedark.nvim',
        as = 'onedark'
    }

    use 'xiyaowong/transparent.nvim'
    -- themes end

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- depreciated
    -- use 'nvim-treesitter/playground'

    use 'nvim-lua/plenary.nvim' -- req for harpoon
    use {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'mbbill/undotree'

    -- Git stuff
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    use 'lewis6991/gitsigns.nvim'

    -- Detect tabstop and shiftwidth automatically
    use 'tpope/vim-sleuth'

    -- couldnt get this setup working with gdscript
    -- so not gonna use it for now,
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },

            -- req for prime's loadout
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- notification popups for progress and lsp etc...
    use {
        'j-hui/fidget.nvim',
    }

    use 'folke/which-key.nvim'

    use {
        'startup-nvim/startup.nvim',
        requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
    }

    use {
        'echasnovski/mini.nvim',
        requires = {
            -- 'nvim-tree/nvim-web-devicons',
            'lewis6991/gitsigns.nvim'
        }
    }

    use 'simrat39/symbols-outline.nvim'

    -- prefer netrw for now
    -- use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        config = function()
            require('ibl').setup()
        end,
        opts = {},
    }

    use 'onsails/lspkind.nvim'

    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    use 'sbdchd/neoformat'

    use 'vimwiki/vimwiki'

    use 'axkirillov/easypick.nvim'

    use 'windwp/nvim-ts-autotag'

    use {
        'laytan/tailwind-sorter.nvim',
        requires = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
        config = function() require('tailwind-sorter').setup({ on_save_setup = true, node_path = 'node' }) end,
        run = 'cd formatter && npm ci && npm run build',
    }
end)
