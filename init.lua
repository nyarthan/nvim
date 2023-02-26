vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("nyarthan.bootstrap")

require("lazy").setup("nyarthan.plugins")

require("nyarthan.util")
require("nyarthan.options")
require("nyarthan.keymaps")
