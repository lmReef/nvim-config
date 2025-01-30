require 'mini.bracketed'.setup()
require 'mini.comment'.setup(
    {
        -- Options which control module behavior
        options = {
            -- Function to compute custom 'commentstring' (optional)
            custom_commentstring = nil,

            -- Whether to ignore blank lines
            ignore_blank_line = true,

            -- Whether to recognize as comment only lines without indent
            start_of_line = false,

            -- Whether to ensure single space pad for comment parts
            pad_comment_parts = true,
        },

        -- Module mappings. Use `''` (empty string) to disable one.
        mappings = {
            -- Toggle comment (like `gcip` - comment inner paragraph) for both
            -- Normal and Visual modes
            comment = 'gc',

            -- Toggle comment on current line
            comment_line = '<leader>c',

            -- Toggle comment on visual selection
            comment_visual = '<leader>c',

            -- Define 'comment' textobject (like `dgc` - delete whole comment block)
            textobject = 'gc',
        },

        -- Hook functions to be executed at certain stage of commenting
        hooks = {
            -- Before successful commenting. Does nothing by default.
            pre = function() end,
            -- After successful commenting. Does nothing by default.
            post = function() end,
        },
    }
)

require 'mini.cursorword'.setup({
    delay = 25
})

-- MiniMap = require'mini.map'
-- MiniMap.setup()

-- vim.keymap.set('n', '<Leader>mc', MiniMap.close)
-- vim.keymap.set('n', '<Leader>mf', MiniMap.toggle_focus)
-- vim.keymap.set('n', '<Leader>mo', MiniMap.open)
-- vim.keymap.set('n', '<Leader>mr', MiniMap.refresh)
-- vim.keymap.set('n', '<Leader>ms', MiniMap.toggle_side)
-- vim.keymap.set('n', '<Leader>mt', MiniMap.toggle)

require 'mini.pairs'.setup({
    -- In which modes mappings from this `config` should be created
    modes = { insert = true, command = false, terminal = false },

    -- Global mappings. Each right hand side should be a pair information, a
    -- table with at least these fields (see more in |MiniPairs.map|):
    -- - <action> - one of 'open', 'close', 'closeopen'.
    -- - <pair> - two character string for pair to be used.
    -- By default pair is not inserted after `\`, quotes are not recognized by
    -- `<CR>`, `'` does not insert pair after a letter.
    -- Only parts of tables can be tweaked (others will use these defaults).
    mappings = {
        ['('] = { action = 'open', pair = '()', neigh_pattern = '[^\\].' },
        ['['] = { action = 'open', pair = '[]', neigh_pattern = '[^\\].' },
        ['{'] = { action = 'open', pair = '{}', neigh_pattern = '[^\\].' },

        [')'] = { action = 'close', pair = '()', neigh_pattern = '[^\\].' },
        [']'] = { action = 'close', pair = '[]', neigh_pattern = '[^\\].' },
        ['}'] = { action = 'close', pair = '{}', neigh_pattern = '[^\\].' },

        ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^\\].', register = { cr = false } },
        ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%a\\].', register = { cr = false } },
        ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\].', register = { cr = false } },
    },
})

-- require'mini.statusline'.setup({
--     -- Content of statusline as functions which return statusline string. See
--     -- `:h statusline` and code of default contents (used instead of `nil`).
--     content = {
--         -- Content for active window
--         active = nil,
--         -- Content for inactive window(s)
--         inactive = nil,
--     },

--     -- Whether to use icons by default
--     use_icons = false,

--     -- Whether to set Vim's settings for statusline (make it always shown with
--     -- 'laststatus' set to 2). To use global statusline in Neovim>=0.7.0, set
--     -- this to `false` and 'laststatus' to 3.
--     set_vim_settings = true,
-- })

require('mini.diff').setup({
    view = {
        style = 'sign',
        signs = { add = '+', change = '~', delete = '-' },
    },
})
