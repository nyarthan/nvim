local M = {
  "folke/lazy.nvim",
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000, config = function() vim.cmd([[colorscheme catppuccin]]) end },
  { "nvim-tree/nvim-tree.lua", config = true }
}

return M
