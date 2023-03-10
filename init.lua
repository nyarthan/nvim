vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('nyarthan.bootstrap')

require('nyarthan.util')
require('nyarthan.options')
require('nyarthan.keymaps').setup()

require('lazy').setup('nyarthan.plugins', {
  defaults = {
    lazy = true,
  },
})
