function vimgrep_search()
    local input = vim.fn.input('Pattern: ')
    if input ~= "" then
        vim.cmd('vimgrep /' .. input .. '/gjf **')
        vim.cmd('copen')
    else
        print('Empty pattern.')
    end
end
