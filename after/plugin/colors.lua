function Theme(color)
	color = color or "dracula"
	vim.cmd.colorscheme(color)

	-- transparency is set in mintty
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function ListThemes()
	print('rose-pine')
	print('dracula')
	print('catppuccin')
	print('molokai')
	print('kanagawa')
	print('nightfox')
	print('tokyodark')
	print('tokyonight')
end

Theme()
