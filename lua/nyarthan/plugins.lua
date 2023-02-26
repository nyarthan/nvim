local M = {
  "folke/lazy.nvim",
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000, config = function() vim.cmd([[colorscheme catppuccin]]) end },
  { "nvim-tree/nvim-tree.lua", config = true },
  { "hrsh7th/nvim-cmp", lazy = false, config = require("nyarthan.cmp").setup, dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    'saadparwaiz1/cmp_luasnip'
  } },
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim", config = true },
  { "neovim/nvim-lspconfig" },
}

return M
