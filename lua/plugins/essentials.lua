return {
	{ "nvim-lua/plenary.nvim", lazy = true },

	{
		"williamboman/mason.nvim",
		opts = {},
		dependencies = {
			"luarocks/luarocks",
		},
	},

	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			handlers = {
				function(server_name) -- default handler
					require("lspconfig")[server_name].setup({})
				end,
			},
		},
	},

	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"vim-language-server",
				"vint",
				-- lua
				"stylua",
				"selene",
				"lua-language-server",
				-- bash
				"bash-language-server",
				"shfmt",
				"beautysh",
				"shellcheck",
				"shellharden",
				-- python
				"pyright",
				"ruff",
				-- js
				"typescript-language-server",
				"svelte-language-server",
				"biome",
				"prettierd",
				-- "astro-language-server",
				-- other
				"snyk",
				"gdtoolkit",
				"rustfmt",
			},
		},
	},

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
		dependencies = { { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				pickers = {
					live_grep = {
						file_ignore_patterns = { "node_modules", "%.git", "%.venv" },
						additional_args = function(_)
							return { "--hidden" }
						end,
					},
					find_files = {
						file_ignore_patterns = { "node_modules", "%.git", "%.venv" },
						hidden = true,
					},
				},
				extensions = {
					"fzf",
				},
			})
			telescope.load_extension("fzf")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "Telescope help tags" })
			vim.keymap.set("n", "<leader>pk", builtin.keymaps, { desc = "Telescope keymaps" })
			vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>pw", builtin.grep_string, { desc = "Telescope grep word" })
			vim.keymap.set("n", "<leader>pc", builtin.git_commits, { desc = "Telescope git commits" })
			vim.keymap.set("n", "<leader>pb", builtin.git_branches, { desc = "Telescope git branches" })
			vim.keymap.set("n", "<leader>pg", builtin.git_status, { desc = "Telescope git status" })
			vim.keymap.set("n", "<leader>pt", function()
				vim.cmd(":Easypick tmux-ls")
			end, { desc = "Telescope tmux sessions" })
			vim.keymap.set("n", "<leader>pn", function()
				vim.cmd(":Telescope notify")
			end, { desc = "Telescope notification history" })
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
			timeout = 3000,
			top_down = false,
			background_colour = "TabLine",
		},
	},
}
