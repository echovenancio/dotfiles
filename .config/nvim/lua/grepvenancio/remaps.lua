vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '\'', '\'\'<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '`', '``<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<', '<><Left>', { noremap = true, silent = true })
