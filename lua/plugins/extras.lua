return {
    "brenoprata10/nvim-highlight-colors",
    "mbbill/undotree",
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
    "simrat39/symbols-outline.nvim",

    { "nextflow-io/vim-language-nextflow", ft = "nextflow" },
    { "vimwiki/vimwiki",                   keys = "<leader>w" },

    {
        "windwp/nvim-ts-autotag",
        opts = {},
        ft = {
            "astro",
            "glimmer",
            "handlebars",
            "html",
            "javascript",
            "jsx",
            "markdown",
            "php",
            "rescript",
            "svelte",
            "tsx",
            "twig",
            "typescript",
            "vue",
            "xml",
        },
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup()
        end,
    },
}
