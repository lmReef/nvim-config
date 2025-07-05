vim.lsp.config["bash-language-server"] = {
	cmd = { "bash-language-server", "start" },
	filetypes = { "bash", "sh", "zsh" },
	root_markers = { ".git" },
	settings = {
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command|.zsh)",
		},
	},
}

vim.lsp.enable("bash-language-server")
