vim.lsp.config["Godot"] = {
	cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
	filetypes = { "gdscript", "godot" },
	root_markers = { "project.godot", ".git" },
}
vim.lsp.enable("Godot")
