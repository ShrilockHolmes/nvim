return {
     {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    event={"BufReadPost","BufNewFile"},
    config=function()
        require('opts.lsp')
    end,
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
            {'folke/neodev.nvim',opts={}}
    },
  },
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    event="InsertEnter",
    config=function()
        require('opts.cmp')
    end,
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },
}
