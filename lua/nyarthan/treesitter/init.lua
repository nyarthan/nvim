local treesitter_configs = require("nvim-treesitter.configs")

treesitter_configs.setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = false,
	},
})

require("nyarthan.treesitter.autotag")
