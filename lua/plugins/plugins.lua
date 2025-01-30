return {

    -- essential

    "luarocks/luarocks",
    "nvim-lua/plenary.nvim",

    -- t1

    "BurntSushi/ripgrep",
    "nvim-treesitter/nvim-treesitter",
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenary.nvim" },
    },

    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "BurntSushi/ripgrep" },
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                -- build = "make",
                -- cond = function(,
                --     return vim.fn.executable("make", == 1
                -- end,
            },
        },
    },

    -- Git stuff
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",

    -- themes

    "xiyaowong/transparent.nvim",
    { "AlphaTechnolog/pywal.nvim", name = "pywal" },
    { "rose-pine/neovim",          name = "rose-pine" },
    { "maxmx03/dracula.nvim",      name = "dracula" },
    { "catppuccin/nvim",           name = "catppuccin" },
    { "tomasr/molokai",            name = "molokai" },
    { "rebelot/kanagawa.nvim",     name = "kanagawa" },
    { "edeneast/nightfox.nvim",    name = "nightfox" },
    { "tiagovla/tokyodark.nvim",   name = "tokyodark" },
    { "folke/tokyonight.nvim",     name = "tokyonight" },
    { "morhetz/gruvbox",           name = "gruvbox" },
    { "navarasu/onedark.nvim",     name = "onedark" },

    -- random shite

    "mbbill/undotree",
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

    -- couldnt get this setup working with gdscript
    -- so not gonna  it for now,
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            { "neovim/nvim-lspconfig" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lua" },
            { "L3MON4D3/LuaSnip" },
            { "saadparwaiz1/cmp_luasnip" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "rafamadriz/friendly-snippets" },
        },
    },

    -- notification popups for progress and lsp etc...
    { "j-hui/fidget.nvim" },

    -- "folke/which-key.nvim",

    -- {
    --      "startup-nvim/startup.nvim",
    --      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    --  },

    "nvim-tree/nvim-web-devicons",

    {
        "echasnovski/mini.nvim",
        requires = {
            'nvim-tree/nvim-web-devicons',
            "lewis6991/gitsigns.nvim",
        },
    },

    "simrat39/symbols-outline.nvim",

    -- prefer netrw for now
    --  'nvim-tree/nvim-tree.lua'

    {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opts = {} },
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        -- See `:help ibl`
        config = function()
            require('ibl').setup()
        end
    },

    "onsails/lspkind.nvim",

    "junegunn/fzf",
    "junegunn/fzf.vim",

    "sbdchd/neoformat",

    "vimwiki/vimwiki",

    "axkirillov/easypick.nvim",

    "windwp/nvim-ts-autotag",

    "nextflow-io/vim-language-nextflow",

    "tpope/vim-obsession",

    "brenoprata10/nvim-highlight-colors",
}
