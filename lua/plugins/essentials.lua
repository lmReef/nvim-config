return {
    "luarocks/luarocks",
    "nvim-lua/plenary.nvim",
    "onsails/lspkind.nvim",
    "nvim-treesitter/nvim-treesitter",
    "sbdchd/neoformat",

    -- "nvim-tree/nvim-web-devicons",

    {
        "VonHeikemen/lsp-zero.nvim",
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

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
            "nvim-telescope/telescope-fzf-native.nvim",
            -- TODO: can probably implement this without the plugin
            {
                "axkirillov/easypick.nvim",
                config = function()
                    local easypick = require("easypick")
                    easypick.setup({
                        pickers = {
                            {
                                name = "Changed Files",
                                command = "git diff --name-only",
                                previewer = easypick.previewers.file_diff(),
                            },
                        },
                    })
                end,
            },
        },
    },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    {
        "rcarriga/nvim-notify",
        opts = {
            render = "wrapped-compact",
            stages = "fade_in_slide_out",
            fps = 90,
            timeout = 3500,
        },
    },
}
