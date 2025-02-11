return {
	{
		"echasnovski/mini.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
		},
		config = function()
			require("mini.bracketed").setup({})
			require("mini.surround").setup({})
			require("mini.diff").setup({})
			require("mini.cursorword").setup({})

			require("mini.comment").setup({
				options = {
					custom_commentstring = nil,
					ignore_blank_line = true,
					start_of_line = false,
					pad_comment_parts = true,
				},

				mappings = {
					comment = "gc",
					comment_line = "<leader>c",
					comment_visual = "<leader>c",
					textobject = "gc",
				},
			})

			require("mini.pairs").setup({
				modes = { insert = true, command = false, terminal = false },
				mappings = {
					["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
					["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
					["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

					[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
					["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
					["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },

					['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
					["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
					["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
				},
			})
		end,
	},
}
