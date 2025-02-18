return {
	{ "nvim-lua/plenary.nvim", lazy = true },

	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"onsails/lspkind.nvim", -- icons/glyphs
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lua",
			"saadparwaiz1/cmp_luasnip",
			{
				"L3MON4D3/LuaSnip",
				-- dependencies = {

				-- 	"rafamadriz/friendly-snippets",
				-- },
			},
			{
				"williamboman/mason-lspconfig.nvim",
				opts = {
					ensure_installed = {},
					handlers = {
						function(server_name) -- default handler
							require("lspconfig")[server_name].setup({})
						end,
					},
				},
				dependencies = {
					{
						"williamboman/mason.nvim",
						opts = {},
						dependencies = {
							"luarocks/luarocks",
						},
					},
				},
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"query",
					"gdscript",
					"python",
				},
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>pc", builtin.git_branches, {})
			vim.keymap.set("n", "<leader>pt", function()
				vim.cmd(":Easypick tmux-ls")
			end)
			vim.keymap.set("n", "<leader>pg", function()
				vim.cmd(":Easypick Changed Files")
			end, {})
			vim.keymap.set("n", "<leader>pn", function()
				vim.cmd(":Telescope notify")
			end)
		end,
		keys = "<leader>p",
	},
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
					{
						name = "tmux-ls",
						command = "tmux ls | grep -o -P '^.*(?=: )'",
						action = easypick.actions.nvim_command(":silent !tmux switch-client -t"),
					},
				},
			})
		end,
		lazy = true,
		cmd = "Easypick",
	},

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		config = function()
			local harpoon = require("harpoon")
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<leader>e", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)
			vim.keymap.set("n", "<leader>1", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<leader>2", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<leader>3", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<leader>4", function()
				harpoon:list():select(4)
			end)
			-- Toggle previous & next buffers stored within Harpoon list
			vim.keymap.set("n", "<C-S-P>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<C-S-N>", function()
				harpoon:list():next()
			end)
		end,
		keys = "<leader>",
	},

	{
		"rcarriga/nvim-notify",
		opts = {
			render = "wrapped-compact",
			stages = "fade_in_slide_out",
			fps = 90,
			timeout = 3500,
			background_colour = "#999999",
		},
	},
}
