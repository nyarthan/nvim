local configs = require('nvim-treesitter.configs')

local U = {}

U.setup = function()
  configs.setup({
    ensure_installed = {
      'lua',
      'tsx',
      'typescript',
      'javascript',
      'rust',
      'toml',
    },
    sync_install = false,
    auto_install = true,

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    playground = {
      enable = true,
    },
  })
end

return U
