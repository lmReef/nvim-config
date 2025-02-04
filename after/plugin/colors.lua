-- manually add themes here after installing
local themes = {
	"rose-pine",
	"dracula",
	"catppuccin",
	"molokai",
	"kanagawa",
	"nightfox",
	"tokyodark",
	"tokyonight",
	"gruvbox",
	"onedark",
}

math.randomseed(os.time())

function PywalTheme()
	require("pywal").setup()
end

function Theme(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)
	vim.cmd("TransparentEnable")

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
end

function RandomTheme()
	Theme(themes[math.random(0, #themes - 1)])
end

function GetCurrentTheme()
	return vim.g.colors_name
end

function ListThemes()
	for i, name in ipairs(themes) do
		print(name)
	end
end

PywalTheme()
