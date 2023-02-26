local M = {
  "folke/lazy.nvim",
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000, config = function() vim.cmd([[colorscheme catppuccin]]) end },
  { "nvim-tree/nvim-tree.lua", config = true, lazy = false, dependencies = {"nvim-tree/nvim-web-devicons"} },
  { "hrsh7th/nvim-cmp", config = require("nyarthan.cmp").setup, dependencies = {
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
  { "nvim-treesitter/nvim-treesitter", build = "TSUpdate", config = require("nyarthan.treesitter").setup, event = "BufEnter" }
}

return M
