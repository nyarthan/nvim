local M = {
  'folke/lazy.nvim',
  'nvim-lua/plenary.nvim',
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = require('nyarthan.colorscheme').setup,
  },
  {
    'nvim-tree/nvim-tree.lua',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = require('nyarthan.nvim_tree').setup,
  },
  {
    'hrsh7th/nvim-cmp',
    config = require('nyarthan.cmp').setup,
    event = 'BufEnter',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind.nvim',
    },
  },
  { 'williamboman/mason.nvim', config = true, cmd = 'Mason' },
  { 'williamboman/mason-lspconfig.nvim', config = true, event = 'BufEnter' },
  {
    'neovim/nvim-lspconfig',
    event = 'BufEnter',
    config = require('nyarthan.lsp').setup,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = 'TSUpdate',
    config = require('nyarthan.treesitter').setup,
    event = 'BufEnter',
  },
  { 'JoosepAlviste/nvim-ts-context-commentstring', event = 'BufEnter' },
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    config = require('nyarthan.telescope').setup,
    keys = '<leader>t',
  },
  {
    'mhartington/formatter.nvim',
    event = 'BufEnter',
    config = require('nyarthan.formatter').setup,
  },
  {
    'numToStr/FTerm.nvim',
    keys = '<c-\\>',
    config = require('nyarthan.terminal').setup,
  },
  {
    'windwp/nvim-autopairs',
    event = 'BufEnter',
    config = true,
  },
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufEnter',
    config = true,
  },
  {
    'numToStr/Comment.nvim',
    config = require('nyarthan.comment').setup,
    event = 'BufEnter',
  },
  'b0o/SchemaStore.nvim',
  {
    'folke/trouble.nvim',
    event = 'BufEnter',
  },
  {
    'jose-elias-alvarez/typescript.nvim',
    event = 'BufEnter',
  },
  {
    'zbirenbaum/copilot.lua',
    event = 'BufEnter',
    -- config = require('nyarthan.copilot').setup,
  },
}

return M
