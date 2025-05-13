return {
	"brenoprata10/nvim-highlight-colors",
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"simrat39/symbols-outline.nvim",

	{
		"nextflow-io/vim-language-nextflow",
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
			vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode, { desc = "ZenMode toggle" })
		end,
		keys = "<leader>z",
	},

	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", function()
				vim.cmd.UndotreeToggle()
				vim.cmd.UndotreeFocus()
			end, { desc = "UndoTree toggle" })
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

	{
		"MeanderingProgrammer/render-markdown.nvim",
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
}
