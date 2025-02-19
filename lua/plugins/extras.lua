return {
	"brenoprata10/nvim-highlight-colors",
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"simrat39/symbols-outline.nvim",

	{ "vimwiki/vimwiki", keys = "<leader>w" },

	{
		"nextflow-io/vim-language-nextflow",
		config = function()
			vim.treesitter.language.register("groovy", "nextflow")
		end,
		ft = "nextflow",
	},

	{
		"chentoast/marks.nvim",
		event = "VeryLazy",
		opts = {},
	},

	{
		"folke/zen-mode.nvim",
		dependencies = {
			"folke/twilight.nvim",
		},
		config = function()
			require("zen-mode").setup({
				plugins = {
					twilight = { enabled = true },
				},
				on_open = function(_)
					vim.cmd("silent !tmux set status off")
				end,
				on_close = function()
					vim.cmd("silent !tmux set status on")
				end,
			})
			vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode)
		end,
		keys = "<leader>z",
	},

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
	},
}
