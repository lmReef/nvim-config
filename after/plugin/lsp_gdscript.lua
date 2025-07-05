local pipe = "/tmp/godot.pipe"

vim.lsp.config["Godot"] = {
	cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
	-- root_dir = vim.fs.dirname(vim.fs.find({ "project.godot", ".git" }, { upward = true })[1]),
	root_markers = { "project.godot", ".git" },
	-- on_attach = function(client, bufnr)
	-- 	vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
	-- end,
}
vim.lsp.enable("Godot")
