require("nvim-treesitter.install").compilers = { "clang", "gcc" }

require("nvim-treesitter.configs").setup({

	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"query",
		"gdscript",
		"python",
	},

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.nextflow = {
-- 	install_info = {
-- 		-- url = "~/projects/tree-sitter-nextflow", -- local path or git repo
-- 		url = "https://github.com/matthuska/tree-sitter-nextflow", -- local path or git repo
-- 		files = { "src/parser.c" },                          -- note that some parsers also require src/scanner.c or src/scanner.cc
-- 		-- optional entries:
-- 		branch = "main",                                     -- default branch in case of git repo if different from master
-- 		generate_requires_npm = true,                        -- if stand-alone parser without npm dependencies
-- 		requires_generate_from_grammar = true,               -- if folder contains pre-generated src/parser.c
-- 	},
-- 	-- filetype = "nf",                                         -- if filetype does not match the parser name
-- }
vim.filetype.add({
	-- Detect and assign filetype based on the extension of the filename
	extension = {
		nf = "nextflow",
	},
	-- Detect and apply filetypes based on the entire filename
	filename = {},
	-- Detect and apply filetypes based on certain patterns of the filenames
	pattern = {},
})
