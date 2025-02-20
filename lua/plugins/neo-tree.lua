return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		-- init = function()
		-- 	vim.api.nvim_create_autocmd("BufEnter", {
		-- 		-- make a group to be able to delete it later
		-- 		group = vim.api.nvim_create_augroup("NeoTreeInit", { clear = true }),
		-- 		callback = function()
		-- 			local f = vim.fn.expand("%:p")
		-- 			if vim.fn.isdirectory(f) ~= 0 then
		-- 				vim.cmd("Neotree current dir=" .. f)
		-- 				-- neo-tree is loaded now, delete the init autocmd
		-- 				vim.api.nvim_clear_autocmds({ group = "NeoTreeInit" })
		-- 			end
		-- 		end,
		-- 	})
		-- end,
		opts = {
			-- hijack_netrw_behavior = "open_current",
			add_blank_line_at_top = true,
			close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
			popup_border_style = "rounded", -- "double", "none", "rounded", "shadow", "single" or "solid"
			sort_case_insensitive = true, -- used when sorting files and directories in the tree

			window = {
				position = "right",
				width = 35,
			},

			filesystem = {
				follow_current_file = {
					enabled = true,
				},
				-- scan_mode = "deep",
				group_empty_dirs = true, -- when true, empty folders will be grouped together
				use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
				components = {
					harpoon_index = function(config, node, _)
						local harpoon_list = require("harpoon"):list()
						local path = node:get_id()
						local harpoon_key = vim.uv.cwd()

						for i, item in ipairs(harpoon_list.items) do
							local value = item.value
							if string.sub(item.value, 1, 1) ~= "/" then
								value = harpoon_key .. "/" .. item.value
							end

							if value == path then
								vim.print(path)
								return {
									text = string.format(" 󰀱 %d", i), -- <-- Add your favorite harpoon like arrow here
									highlight = config.highlight or "NeoTreeDirectoryIcon",
								}
							end
						end
						return {}
					end,
				},
				renderers = {
					file = {
						{ "indent" },
						{ "icon" },
						{ "name", use_git_status_colors = true },
						{
							"symlink_target",
							zindex = 10,
							highlight = "NeoTreeSymbolicLinkTarget",
						},
						{ "harpoon_index", zindex = 10 }, --> This is what actually adds the component in where you want it
						{ "clipboard", zindex = 10 },
						{ "modified", zindex = 20, align = "right" },
						{ "diagnostics", zindex = 20, align = "right" },
						{ "git_status", zindex = 10, align = "right" },
						{ "file_size", zindex = 10, align = "right" },
						{ "type", zindex = 10, align = "right" },
						{ "last_modified", zindex = 10, align = "right" },
						{ "created", zindex = 10, align = "right" },
					},
				},
			},
		},
	},
}
