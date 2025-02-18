return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			callback = function()
				vim.cmd("Format")
			end,
		})
	end,
}
