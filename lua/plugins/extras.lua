return {
    "vimwiki/vimwiki",
    "windwp/nvim-ts-autotag",
    "nextflow-io/vim-language-nextflow",
    "brenoprata10/nvim-highlight-colors",
    "mbbill/undotree",
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
    "j-hui/fidget.nvim", -- notification popups for progress and lsp etc...
    "simrat39/symbols-outline.nvim",

    {
        "echasnovski/mini.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "lewis6991/gitsigns.nvim",
        },
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup()
        end,
    },
}
