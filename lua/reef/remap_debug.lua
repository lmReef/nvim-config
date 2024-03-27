local run_handler = function()
    local filetype = vim.bo.filetype
    vim.cmd(':w')

    if filetype == 'rust' then
        vim.cmd(':!cargo r')
    elseif filetype == 'javascript' then
        vim.cmd(':!node index.js')
    else
        print('No run handler set for filetype', filetype)
    end
end

local build_handler = function()
    local filetype = vim.bo.filetype
    vim.cmd(':w')

    if vim.fn.filereadable('./build.bat') then
        vim.cmd(':!build.bat')
    elseif filetype == 'rust' then
        vim.cmd(':!cargo b --release')
    else
        print('Could not find build.bat and no build handler set for filetype', filetype)
    end
end

vim.keymap.set('n', '<leader>r', run_handler)
vim.keymap.set('n', '<leader>b', build_handler)
