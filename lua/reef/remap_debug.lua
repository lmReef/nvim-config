local run_handler = function()
    local filetype = vim.bo.filetype
    if filetype == 'rust' then
        vim.cmd(':!cargo r')
    else
        print('No run handler set for filetype', filetype)
    end
end

vim.keymap.set('n', '<leader>r', run_handler)
