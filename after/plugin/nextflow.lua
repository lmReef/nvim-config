local lspconfig = require("lspconfig")

lspconfig.nextflow_ls.setup({
	cmd = {
		"java",
		"-jar",
		os.getenv("HOME") .. "/projects/nextflow-lsp/build/libs/language-server-all.jar",
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
