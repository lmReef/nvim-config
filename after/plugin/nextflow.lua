local lspconfig = require("lspconfig")

lspconfig.nextflow_ls.setup({
	cmd = {
		"java",
		"-jar",
		os.getenv("HOME") .. "/.nextflow/lsp/v24.10/v24.10.4.jar",
	},
	filetypes = { "nextflow" },
	root_dir = lspconfig.util.root_pattern("nextflow.config", ".git"),
	settings = {
		nextflow = {
			files = {
				exclude = { ".git", ".nf-test", "work" },
			},
		},
	},
})
