local telescope = require('telescope')

telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    preview = {
      treesitter = true,
    },
    layout_config = {
      vertical = { width = 0.5 }
      -- other layout configuration here
    },
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

require'telescope'.load_extension('project')
require'telescope'.load_extension('harpoon')

local builtin = require('telescope.builtin')
local extensions = require('telescope').extensions

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>bf', builtin.buffers, {})
vim.keymap.set('n', '<leader>man', builtin.man_pages, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
-- d	delete currently selected project
-- r	rename currently selected project
-- c	create a project*
-- s	search inside files within your project
-- b	browse inside files within your project
-- w	change to the selected project's directory without opening it
-- R	find a recently opened file within your project
-- f	find a file within your project (same as <CR>)
-- o	change current cd scope
vim.keymap.set('n', '<leader>fp', extensions.project.project, {})
