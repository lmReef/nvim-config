return {
	-- {
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	config = function()
	-- 		require("nvim-tree").setup({
	-- 			filters = { custom = { "^.git$" } },
	-- 			hijack_cursor = true,
	-- 			view = {
	-- 				side = "right",
	-- 				number = true,
	-- 				relativenumber = true,
	-- 			},
	-- 			renderer = {
	-- 				hidden_display = "all",
	-- 				highlight_git = "name",
	-- 			},
	-- 			update_focused_file = {
	-- 				enable = true,
	-- 				update_root = true,
	-- 			},
	-- 			live_filter = {
	-- 				always_show_folders = false,
	-- 			},
	-- 		})

	-- 		local api = require("nvim-tree.api")
	-- 		-- auto open file on create
	-- 		api.events.subscribe(api.events.Event.FileCreated, function(file)
	-- 			vim.cmd("edit " .. vim.fn.fnameescape(file.fname))
	-- 		end)

	-- 		-- auto open on startup
	-- 		vim.api.nvim_create_autocmd({ "UIEnter" }, {
	-- 			callback = function()
	-- 				api.tree.open()
	-- 				vim.cmd("wincmd p")
	-- 			end,
	-- 		})
	-- 		-- auto close
	-- 		local close_fully = true
	-- 		vim.api.nvim_create_autocmd({ "QuitPre" }, {
	-- 			callback = function()
	-- 				if close_fully then
	-- 					api.tree.close()
	-- 				end
	-- 			end,
	-- 		})
	-- 		-- return to full-window tree; netrw EX style
	-- 		vim.keymap.set("n", "-", function()
	-- 			close_fully = false
	-- 			vim.cmd("q")
	-- 			api.tree.open()
	-- 			close_fully = true
	-- 		end, { desc = "Exit file to nvim tree" })

	-- 		-- keymap to toggle the sidebar
	-- 		vim.keymap.set("n", "<leader>i", function()
	-- 			api.tree.toggle()
	-- 		end)
	-- 	end,
	-- },
}
