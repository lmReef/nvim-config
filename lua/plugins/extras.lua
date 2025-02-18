return {
	"brenoprata10/nvim-highlight-colors",
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"simrat39/symbols-outline.nvim",

	{ "nextflow-io/vim-language-nextflow", ft = "nextflow" },
	{ "vimwiki/vimwiki",                   keys = "<leader>w" },

	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", function()
				vim.cmd.UndotreeToggle()
				vim.cmd.UndotreeFocus()
			end)
		end,
		keys = "<leader>u",
	},

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
		main = "ibl",
		opts = {},
	}
}
