local M = {
  "folke/lazy.nvim",
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000, config = function() vim.cmd([[colorscheme catppuccin]]) end },
  { "nvim-tree/nvim-tree.lua", config = true, lazy = false, dependencies = {"nvim-tree/nvim-web-devicons"} },
  { "hrsh7th/nvim-cmp", config = require("nyarthan.cmp").setup, event = "BufEnter", dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    'saadparwaiz1/cmp_luasnip',
    "onsails/lspkind.nvim"
  } },
  { "williamboman/mason.nvim", config = true, cmd = "Mason" },
  { "williamboman/mason-lspconfig.nvim", config = true, event = "BufEnter" },
  { "neovim/nvim-lspconfig", event = "BufEnter" },
  { "nvim-treesitter/nvim-treesitter", build = "TSUpdate", config = require("nyarthan.treesitter").setup, event = "BufEnter" }
}

return M
