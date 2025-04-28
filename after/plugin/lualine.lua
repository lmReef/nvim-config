-- if exists(vim.g.vscode) then
-- 	return
-- end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = GetCurrentTheme(),
		component_separators = { left = "|", right = "|" },
		-- component_separators = { left = '', right = '' },
		-- section_separators = { left = '', right = '' },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 100,
			tabline = 100,
			winbar = 100,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			{
				"filename",
				file_status = true,
				newfile_status = true,
				path = 1,
				symbols = {
					modified = "󱇧",
					readonly = "󰈡",
					newfile = "",
				},
			},
			"diagnostics",
		},
		lualine_c = {
			"progress",
			"diff",
			"harpoon2",
		},
		lualine_x = {
			"filetype",
		},
		lualine_y = {
			function()
				if os.getenv("VIRTUAL_ENV_PROMPT") then
					return " " .. os.getenv("VIRTUAL_ENV_PROMPT")
				end
				return ""
			end,
		},
		lualine_z = {
			"branch",
			-- "location",
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
