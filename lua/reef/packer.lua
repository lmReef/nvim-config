-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

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

    -- use 'maxmx03/dracula.nvim'

    -- use 'oxfist/night-owl.nvim'
    -- testing giut stuff
    --
    --

    -- themes end

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use 'nvim-treesitter/playground'

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
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- notification popups for progress and lsp etc...
    use 'j-hui/fidget.nvim'

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
        main = 'ibl',
        opts = {},
    }

    use {
        'onsails/lspkind.nvim'
    }
end)
