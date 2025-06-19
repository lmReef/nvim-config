local lspconfig = require("lspconfig")

lspconfig.nextflow_ls.setup({
	cmd = {
		"java",
		"-jar",
		os.getenv("HOME") .. "/.nextflow/lsp/v25.04/v25.04.2.jar",
	},
	filetypes = { "nextflow" },
	root_dir = lspconfig.util.root_pattern("nextflow.config", ".git"),
	settings = {
		nextflow = {
			files = {
				exclude = { ".git", ".nf-test", "work" },
			},
			formatting = {
				harshilAlignment = true,
				sortDeclarations = false,
			},
		},
	},
})
