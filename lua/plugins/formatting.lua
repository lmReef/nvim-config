return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			-- documentation here: https://github.com/mhartington/formatter.nvim/tree/master/lua/formatter/filetypes
			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },

				javascript = { require("formatter.filetypes.javascript").biome },
				javascriptreact = { require("formatter.filetypes.javascriptreact").biome },
				typescript = { require("formatter.filetypes.typescript").biome },
				typescriptreact = { require("formatter.filetypes.typescriptreact").biome },
				svelte = { require("formatter.filetypes.javascript").prettierd },

				html = { require("formatter.filetypes.html").prettierd },
				css = { require("formatter.filetypes.css").prettierd },
				json = { require("formatter.filetypes.json").biome },
				yaml = { require("formatter.filetypes.yaml").prettierd },
				markdown = { require("formatter.filetypes.markdown").prettierd },

				sh = {
					require("formatter.filetypes.sh").shfmt,
					-- TODO:
					-- function ()
					-- 	vim.cmd("!shellharden --transform %")
					-- end
				},
				zsh = { require("formatter.filetypes.zsh").beautysh },

				python = {
					function()
						-- remove unused imports https://docs.astral.sh/ruff/rules/#F401
						return {
							exe = "ruff",
							args = {
								"check",
								"-q",
								"--select",
								"F401",
								"--fix",
								"-",
							},
							stdin = true,
						}
					end,
					require("formatter.filetypes.python").iruff, -- sort imports
					require("formatter.filetypes.python").ruff,
				},

				rust = { require("formatter.filetypes.rust").rustfmt },

				nextflow = {
					function()
						vim.lsp.buf.format()
					end,
				},

				["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePost", {
			callback = function()
				vim.cmd("FormatWrite")
			end,
		})
	end,
}
