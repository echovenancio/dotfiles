return {

    {'williamboman/mason.nvim'},

    {'neovim/nvim-lspconfig'},

    {'hrsh7th/cmp-nvim-lsp'},

    {'hrsh7th/nvim-cmp'},

    { 'ThePrimeagen/harpoon' },

    {
      'stevearc/oil.nvim',
      ---@module 'oil'
      ---@type oil.SetupOpts
      opts = {},
      -- Optional dependencies
      --dependencies = { { "echasnovski/mini.icons", opts = {} } },
      --dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { 'nvim-telescope/telescope-project.nvim' },

    { 'rebelot/kanagawa.nvim' },

}
