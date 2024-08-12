vim.g.mapleader = " "
vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '\'', '\'\'<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '`', '``<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<', '<><Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>g', ':lua vimgrep_search()<CR>', { noremap = true, silent = true })
