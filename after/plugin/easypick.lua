local easypick = require("easypick")

easypick.setup({
	pickers = {
		-- add your custom pickers here

		-- list files inside current folder with default previewer
		{
			-- name for your custom picker, that can be invoked using :Easypick <name> (supports tab completion)
			name = "ls",
			-- the command to execute, output has to be a list of plain text entries
			command = "ls",
			-- specify your custom previwer, or use one of the easypick.previewers
			previewer = easypick.previewers.default()
		},

		-- diff current branch with base_branch and show files that changed with respective diffs in preview
		{
			name = "Changed Files",
			command = "git diff --name-only",
			previewer = easypick.previewers.file_diff()
		},
	}
})
