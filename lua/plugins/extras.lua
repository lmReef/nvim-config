return {
    "vimwiki/vimwiki",
    "nextflow-io/vim-language-nextflow",
    "brenoprata10/nvim-highlight-colors",
    "mbbill/undotree",
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
    "simrat39/symbols-outline.nvim",

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
