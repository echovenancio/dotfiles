local harpoon_mark = require('harpoon.mark')
local harpoon_ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>hm', harpoon_mark.add_file, {})
vim.keymap.set('n', '<leader>hp', harpoon_ui.nav_prev, {})
vim.keymap.set('n', '<leader>hn', harpoon_ui.nav_next, {})
vim.keymap.set('n', '<leader>ht', require'telescope'.extensions.harpoon.marks, {})

