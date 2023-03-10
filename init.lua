vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('nyarthan.bootstrap')

require('lazy').setup('nyarthan.plugins', {
  defaults = {
    lazy = true,
  },
})

require('nyarthan.util')
require('nyarthan.options')
require('nyarthan.keymaps').setup()
require('nyarthan.lsp')
